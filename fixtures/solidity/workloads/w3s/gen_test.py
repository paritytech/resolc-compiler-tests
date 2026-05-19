#!/usr/bin/env python3
"""
Combined workload exercising W3S (tick3t), Festival, T3rminal, and P2PMarket
in three sequential per-day blocks. Every parallel inner iter inside every
block touches all four dapps so the chain sees a continuous mix of activity
across the four contracts.

  Each day D has the structure:

    Block A inner_repeat (N_OPS parallel iters)
        BUYER_A.W3S.buyTicket                                ← W3S
        PRE_ATTENDEE.Festival.register                      ← Festival step 1
        DAY_CALLER.Driver.sell(saleNonce slot 0)             ← T3rminal
        DAY_CALLER.P2P.lockTrade + confirmCash + confirmPickup ← P2P full

    Block B inner_repeat (N_OPS parallel iters)
        DAY_CALLER.W3S.checkIn(D*N_OPS + K + 1)              ← W3S (Block A's mint)
        DAY_CALLER.Festival.checkIn(PRE_ATTENDEE) → POAP     ← Festival step 2
        DAY_CALLER.Driver.sell(saleNonce slot 1)             ← T3rminal
        DAY_CALLER.P2P.lockTrade + confirmCash + confirmPickup ← P2P full

    Block C inner_repeat (N_OPS parallel iters)
        BUYER_C.W3S.buyTicket                                ← W3S
        PRE_ATTENDEE.Festival.createSession(POAP)            ← Festival step 3
        DAY_CALLER.Driver.sell(saleNonce slot 2)             ← T3rminal
        DAY_CALLER.P2P.lockTrade + confirmCash + confirmPickup ← P2P full

    DAY_CALLER.Driver.closeDay(D, 3*N_OPS)

  Cross-block deps:
    * Festival register → checkIn → createSession crosses senders (PRE_ATTENDEE,
      DAY_CALLER, PRE_ATTENDEE). Resolved by block-sequence ordering and the
      framework's gas-estimation retry loop — same pattern the existing
      festival workload uses without await_transaction_inclusion.
    * W3S buyTicket → checkIn crosses senders (BUYER_A, DAY_CALLER). Resolved
      the same way: by the time Block B's checkIn dry-runs land, Block A's
      buyTickets are mined.
    * P2P lockTrade → confirmCash → confirmPickup all share DAY_CALLER →
      mempool's per-sender nonce queue serializes them within each block.
    * T3rminal sells from DAY_CALLER nonce-ordered → closeDay sees the full
      3*N_OPS dailyBuffer at end of day.

  Variable scope:
    * DAY_CALLER_K and OFFER_ID_K captured in setup repeat (consolidate_state)
      → visible in case scope → referenced per-day in measured loop via
      $VARIABLE:DAY_CALLER_$VARIABLE:D / $VARIABLE:OFFER_ID_$VARIABLE:D.
    * PRE_ATTENDEE_D_K (alloc) + TRADE_A/B/C_D_K (lockTrade return capture) +
      POAP_D_K (Festival.checkIn return capture) captured in each block's
      inner repeat (consolidate_state) → visible in days_outer scope → later
      blocks within the same day reference them.

  Across-day parallelism: days_outer is a repeat block — D=0 is the warm-up
  (sequential), D=1..N_DAYS-1 are parallel outer iters. Different days
  proceed through their A→B→C sequence concurrently, so at any moment
  parallel days are often in different blocks ⇒ all 4 contracts are
  simultaneously active on the chain.
"""

import json
import sys

SMOKE = "--smoke" in sys.argv[1:]

if SMOKE:
    N_DAYS = 2
    N_OPS = 3
else:
    N_DAYS = 5
    N_OPS = 100

ENTRY_COUNT_PER_DAY = 3 * N_OPS

# ── Festival constants ─────────────────────────────────────────────────────
FESTIVAL_NAME_HEX = "0xf9c2171700000000000000000000000000000000000000000000000000000000"
FESTIVAL_START = 2_000_000_000             # May 2033
FESTIVAL_END = 2_002_592_000               # FESTIVAL_START + 30 days
VERIFICATION_WINDOW = 604_800              # 7 days
FESTIVAL_CAPACITY = 5000
DAY_SECS = 86_400
SESSION_DURATION = 7200
SESSION_NAME_HEX = "0x5e55101100000000000000000000000000000000000000000000000000000000"
FEST_VOLUNTEER_ROLE = "0xf7f0fdec05d2d68a3ca32c78a26a4236722632f1d98fdee081484acf844fc7dc"

# ── W3S constants ──────────────────────────────────────────────────────────
W3S_TICKET_PRICE = 1
W3S_ENC_PUB_KEY = "0x000000000000000000000000000000000000000000000000000000000000abcd"
W3S_ENC_NAME_HEX = "0xaabbccdd00000000000000000000000000000000000000000000000000000000"
W3S_W3F_ROLE = "0x488777ed1029a48be1a653368ad8b08022eca349f2eeb999c08a2a039a6d0c57"
W3S_VOLUNTEER_ROLE = "0x5a22d7548cd852c1b683d22507a2d14bc541da2a210a50aeb9e980957642e696"

# ── P2P constants ──────────────────────────────────────────────────────────
AGENT_NAME = "AgentX"
AGENT_METADATA_CID = "ipfs://bafyreid64bd72jzhmnejk7m4tg2dckmsoymjxqyf7tewj"
AGENT_FLAT_FEE = 10
AGENT_HOLD_HOURS = 24
AGENT_EXTRA_HOUR_FEE = 5

OFFER_AMOUNT_AVAILABLE = 10_000_000_000_000_000_000  # 10 PAS
OFFER_MIN_AMOUNT = 1
OFFER_FLAT_FEE = 10
OFFER_TYPE_SELL = 0
FIAT_CURRENCY = "USD"
OFFER_METADATA_CID = "ipfs://bafyofferxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

# Per-trade msg.value (within offer min/max)
TRADE_VALUE_WEI = 1


# ── step constructors ─────────────────────────────────────────────────────

def alloc(name, comment=None):
    s = {"allocate_account": f"$VARIABLE:{name}"}
    if comment:
        s["comment"] = comment
    return s


def fc(instance, method, caller, calldata=None, comment=None, value=None,
       variable_assignments=None):
    step = {"instance": instance, "method": method, "caller": caller}
    if comment is not None:
        step["comment"] = comment
    if calldata is not None:
        step["calldata"] = calldata
    if value is not None:
        step["value"] = value
    if variable_assignments is not None:
        step["variable_assignments"] = variable_assignments
    return step


# ── ABI helpers ───────────────────────────────────────────────────────────

def encode_string_data_words(s):
    b = s.encode("utf-8")
    if not b:
        return ["0x" + "00" * 32]
    nwords = (len(b) + 31) // 32
    padded = b + b"\x00" * (nwords * 32 - len(b))
    return ["0x" + padded[i * 32:(i + 1) * 32].hex() for i in range(nwords)]


def encode_string(s):
    return [str(len(s.encode("utf-8")))] + encode_string_data_words(s)


def n_string_words(s):
    b_len = len(s.encode("utf-8"))
    return 1 + max(1, (b_len + 31) // 32)


# P2PMarket.registerAgent(string name, string metadataCID, uint256 flatFee,
#                          uint8 holdHours, uint256 extraHourFee)
# Head: 5 words (0xA0). name tail at 0xA0, metadataCID tail after name.
def register_agent_calldata():
    name_offset = 0xA0
    metadata_offset = name_offset + n_string_words(AGENT_NAME) * 32
    head = [
        hex(name_offset),
        hex(metadata_offset),
        str(AGENT_FLAT_FEE),
        str(AGENT_HOLD_HOURS),
        str(AGENT_EXTRA_HOUR_FEE),
    ]
    tail = encode_string(AGENT_NAME) + encode_string(AGENT_METADATA_CID)
    return head + tail


# P2PMarket.createOffer(OfferType, uint256 amountAvailable, uint256 minAmount,
#                       uint256 flatFee, string fiatCurrency, string metadataCID,
#                       address[] agentAddrs)
# Head: 7 words (0xE0). Tails: fiat, metadata, agents — in order.
def create_offer_calldata(agent_var):
    fiat_offset = 0xE0
    metadata_offset = fiat_offset + n_string_words(FIAT_CURRENCY) * 32
    agents_offset = metadata_offset + n_string_words(OFFER_METADATA_CID) * 32
    head = [
        str(OFFER_TYPE_SELL),
        str(OFFER_AMOUNT_AVAILABLE),
        str(OFFER_MIN_AMOUNT),
        str(OFFER_FLAT_FEE),
        hex(fiat_offset),
        hex(metadata_offset),
        hex(agents_offset),
    ]
    tail = (
        encode_string(FIAT_CURRENCY)
        + encode_string(OFFER_METADATA_CID)
        + ["1", agent_var]  # agentAddrs: length=1, single address
    )
    return head + tail


# saleNonce schema: D * (3*N_OPS) + K * 3 + slot,  slot ∈ {0,1,2} for A/B/C
def sale_nonce_expr(slot):
    return (
        f"$VARIABLE:D {3 * N_OPS} * "
        f"$VARIABLE:K 3 * + "
        f"{slot} +"
    )


def sell_calldata(slot, customer_var):
    return [
        "$VARIABLE:D",
        sale_nonce_expr(slot),
        customer_var,
        "$VARIABLE:K 1000 +",
        f"$VARIABLE:D 1000000 * $VARIABLE:K + {slot * 1000} +",
    ]


def w3s_buy_calldata():
    # buyTicket(bytes encryptedName) — 1 dynamic param: offset, length, data.
    return ["0x20", "4", W3S_ENC_NAME_HEX]


def p2p_full_cycle_steps(block_letter, counterparty_var):
    """Returns the 3 P2P steps (lockTrade + confirmCashReceived + confirmPickup)
    using a trade variable scoped to this block (TRADE_<block_letter>_D_K)."""
    trade_var = f"TRADE_{block_letter}_$VARIABLE:D_$VARIABLE:K"
    return [
        fc("P2PMarket", "lockTrade", "$VARIABLE:DAY_CALLER_$VARIABLE:D",
           value=f"{TRADE_VALUE_WEI} wei",
           calldata=[
               counterparty_var,
               "$VARIABLE:OFFER_ID_$VARIABLE:D",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
           ],
           variable_assignments={"return_data": [trade_var]},
           comment=(
               f"P2P lockTrade — captures tradeId into TRADE_{block_letter}_D_K. "
               "DAY_CALLER is both locker and the offer's agent.")),
        fc("P2PMarket", "confirmCashReceived",
           "$VARIABLE:DAY_CALLER_$VARIABLE:D",
           calldata=[f"$VARIABLE:{trade_var}"],
           comment=(
               "DAY_CALLER (acting as agent) confirms cash received ⇒ "
               "tokens released to counterparty, state → RELEASED.")),
        fc("P2PMarket", "confirmPickup",
           "$VARIABLE:DAY_CALLER_$VARIABLE:D",
           calldata=[f"$VARIABLE:{trade_var}"],
           comment=(
               "DAY_CALLER (acting as locker) confirms pickup ⇒ state → "
               "COMPLETED. Same-sender nonce ordering guarantees this runs "
               "after confirmCashReceived.")),
    ]


# ── Block builders ────────────────────────────────────────────────────────

def build_block_a():
    return {
        "comment": (
            f"Block A: {N_OPS} parallel iters per day. Every iter touches 4 "
            "dapps — W3S buy, Festival register, T3rminal sell (slot 0), and "
            "a full P2P trade cycle (TRADE_A_D_K). consolidate_state "
            "propagates per-iter allocs and the captured TRADE_A_D_K to the "
            "day's outer scope so subsequent blocks can reference them."),
        "repeat": N_OPS,
        "capture_index": "$VARIABLE:K",
        "consolidate_state": True,
        "steps": [
            alloc("BUYER_A_$VARIABLE:D_$VARIABLE:K"),
            alloc("PRE_ATTENDEE_$VARIABLE:D_$VARIABLE:K"),
            alloc("CUSTOMER_A_$VARIABLE:D_$VARIABLE:K"),
            alloc("COUNTERPARTY_A_$VARIABLE:D_$VARIABLE:K"),

            fc("W3S", "buyTicket",
               "$VARIABLE:BUYER_A_$VARIABLE:D_$VARIABLE:K",
               value="1 wei",
               calldata=w3s_buy_calldata(),
               comment=(
                   "W3S: BUYER_A mints one ticket (per-iter fresh address ⇒ "
                   "one-ticket-per-address rule satisfied). tokenId auto-"
                   "assigned in global mint order; will be checkIn'd in "
                   "Block B using D*N_OPS + K + 1.")),

            fc("Festival", "register",
               "$VARIABLE:PRE_ATTENDEE_$VARIABLE:D_$VARIABLE:K",
               calldata=[],
               comment=(
                   "Festival: PRE_ATTENDEE self-registers. Block B's "
                   "checkIn requires this attendee to be registered.")),

            fc("Driver", "sell",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
               calldata=sell_calldata(
                   slot=0,
                   customer_var="$VARIABLE:CUSTOMER_A_$VARIABLE:D_$VARIABLE:K"),
               comment=(
                   "T3rminal: DAY_CALLER records a sale via the Driver "
                   "helper. saleNonce = D*(3*N_OPS) + K*3 + 0 (Block A slot).")),
        ] + p2p_full_cycle_steps(
            "A",
            "$VARIABLE:COUNTERPARTY_A_$VARIABLE:D_$VARIABLE:K",
        ),
    }


def build_block_b():
    return {
        "comment": (
            f"Block B: {N_OPS} parallel iters per day. By Block B's start, "
            "Block A's submissions are at least pool-resident (usually "
            "mined). W3S checkIn references tokenId = D*N_OPS + K + 1 — "
            "valid because Block A across all days collectively mints "
            "N_DAYS*N_OPS tickets in [1..N_DAYS*N_OPS]. Festival.checkIn "
            "captures POAP_D_K; Block C uses it."),
        "repeat": N_OPS,
        "capture_index": "$VARIABLE:K",
        "consolidate_state": True,
        "steps": [
            alloc("CUSTOMER_B_$VARIABLE:D_$VARIABLE:K"),
            alloc("COUNTERPARTY_B_$VARIABLE:D_$VARIABLE:K"),

            fc("W3S", "checkIn",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
               calldata=[f"$VARIABLE:D {N_OPS} * $VARIABLE:K + 1 +"],
               comment=(
                   "W3S: DAY_CALLER (VOLUNTEER) checks in tokenId = "
                   "D*N_OPS + K + 1 from Block A's mint range. Cross-sender "
                   "(BUYER_A minted, DAY_CALLER checks in) ⇒ relies on "
                   "block-sequence + retry loop, same as festival's "
                   "register→checkIn pattern.")),

            fc("Festival", "checkIn",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
               calldata=[
                   "$VARIABLE:PRE_ATTENDEE_$VARIABLE:D_$VARIABLE:K"
               ],
               variable_assignments={
                   "return_data": ["POAP_$VARIABLE:D_$VARIABLE:K"],
               },
               comment=(
                   "Festival: DAY_CALLER (VOLUNTEER_ROLE) checks in "
                   "PRE_ATTENDEE → POAP id captured into POAP_D_K for "
                   "Block C's createSession.")),

            fc("Driver", "sell",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
               calldata=sell_calldata(
                   slot=1,
                   customer_var="$VARIABLE:CUSTOMER_B_$VARIABLE:D_$VARIABLE:K"),
               comment=(
                   "T3rminal: Block B's sale (saleNonce slot 1). Same "
                   "sender as Block A's sell ⇒ ordered by nonce.")),
        ] + p2p_full_cycle_steps(
            "B",
            "$VARIABLE:COUNTERPARTY_B_$VARIABLE:D_$VARIABLE:K",
        ),
    }


def build_block_c():
    return {
        "comment": (
            f"Block C: {N_OPS} parallel iters per day. Final phase of the "
            "Festival pipeline (createSession uses Block B's POAP_D_K). "
            "Also mints one more W3S ticket per iter to keep all 4 dapps "
            "active in this block too. T3rminal sell slot 2 + P2P "
            "TRADE_C_D_K."),
        "repeat": N_OPS,
        "capture_index": "$VARIABLE:K",
        "consolidate_state": True,
        "steps": [
            alloc("BUYER_C_$VARIABLE:D_$VARIABLE:K"),
            alloc("CUSTOMER_C_$VARIABLE:D_$VARIABLE:K"),
            alloc("COUNTERPARTY_C_$VARIABLE:D_$VARIABLE:K"),

            fc("W3S", "buyTicket",
               "$VARIABLE:BUYER_C_$VARIABLE:D_$VARIABLE:K",
               value="1 wei",
               calldata=w3s_buy_calldata(),
               comment=(
                   "W3S: another mint by BUYER_C (not checked-in — keeps "
                   "W3S in the mix for Block C without disrupting the "
                   "tokenId range Block B references).")),

            fc("Festival", "createSession",
               "$VARIABLE:PRE_ATTENDEE_$VARIABLE:D_$VARIABLE:K",
               calldata=[
                   SESSION_NAME_HEX,
                   # startTime = FESTIVAL_START + D * 1 day (within 30-day window)
                   f"$VARIABLE:D {DAY_SECS} * {FESTIVAL_START} +",
                   # endTime = startTime + 2h
                   f"$VARIABLE:D {DAY_SECS} * {FESTIVAL_START} + {SESSION_DURATION} +",
                   "0",  # capacity (0 = no cap)
                   "$VARIABLE:POAP_$VARIABLE:D_$VARIABLE:K",
               ],
               comment=(
                   "Festival: PRE_ATTENDEE creates a session using their "
                   "POAP from Block B. startTime varies per outer day to "
                   "stay within the 30-day festival window.")),

            fc("Driver", "sell",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
               calldata=sell_calldata(
                   slot=2,
                   customer_var="$VARIABLE:CUSTOMER_C_$VARIABLE:D_$VARIABLE:K"),
               comment="T3rminal: Block C's sale (saleNonce slot 2)."),
        ] + p2p_full_cycle_steps(
            "C",
            "$VARIABLE:COUNTERPARTY_C_$VARIABLE:D_$VARIABLE:K",
        ),
    }


def build_days_outer():
    return {
        "comment": (
            f"Days outer: {N_DAYS} iters. D=0 warm-up runs everything "
            "sequentially; D=1..N_DAYS-1 are parallel outer iters. Each "
            "outer iter executes Block A → Block B → Block C → closeDay "
            "within its day. Across parallel days, at any wall-clock moment "
            "different days are typically in different blocks ⇒ all 4 "
            "contracts active simultaneously."),
        "repeat": N_DAYS,
        "capture_index": "$VARIABLE:D",
        "steps": [
            build_block_a(),
            build_block_b(),
            build_block_c(),
            fc("Driver", "closeDay",
               "$VARIABLE:DAY_CALLER_$VARIABLE:D",
               calldata=["$VARIABLE:D", str(ENTRY_COUNT_PER_DAY)],
               comment=(
                   f"End of day: DAY_CALLER closes day D with entryCount = "
                   f"3*N_OPS = {ENTRY_COUNT_PER_DAY} (3 sells per iter × "
                   "N_OPS iters). Same sender as all of the day's sells, so "
                   "mempool nonce ordering guarantees the dailyBuffer.length "
                   "check matches.")),
        ],
    }


# ── case-level inputs ────────────────────────────────────────────────────

def build_inputs():
    inputs = []

    inputs.append(alloc(
        "OWNER",
        comment="Allocate OWNER. Constructor admin on every contract."))

    # ── 8 deploys ──────────────────────────────────────────────────────
    inputs.append(fc(
        "W3S", "#deployer", "$VARIABLE:OWNER",
        calldata=[str(W3S_TICKET_PRICE), W3S_ENC_PUB_KEY],
        comment="Deploy W3S. ticketPrice = 1 wei, encryption pub key static."))

    inputs.append(fc(
        "BulletinIndex", "#deployer", "$VARIABLE:OWNER",
        calldata=[],
        comment="Deploy T3rminalBulletinIndex (per-shop daily CIDs)."))

    inputs.append(fc(
        "TransactionLog", "#deployer", "$VARIABLE:OWNER",
        calldata=["BulletinIndex.address"],
        comment=("Deploy T3rminalTransactionLog wired to BulletinIndex. "
                 "OWNER becomes first shopAdmin in the constructor.")))

    inputs.append(fc(
        "Driver", "#deployer", "$VARIABLE:OWNER",
        calldata=["TransactionLog.address", "BulletinIndex.address"],
        comment="Deploy T3rminalDriver helper."))

    inputs.append(fc(
        "P2PMarket", "#deployer", "$VARIABLE:OWNER",
        calldata=[],
        comment=("Deploy P2PMarket. Constructor seeds USD/EUR token-price "
                 "tables.")))

    inputs.append(fc(
        "FestivalPoap", "#deployer", "$VARIABLE:OWNER",
        calldata=["$VARIABLE:OWNER"],
        comment="Deploy festival-level AttendancePOAP. OWNER is initial owner."))

    inputs.append(fc(
        "SessionPoap", "#deployer", "$VARIABLE:OWNER",
        calldata=["$VARIABLE:OWNER"],
        comment=("Deploy session-level AttendancePOAP. Factory rights "
                 "transferred to Festival below.")))

    inputs.append(fc(
        "Festival", "#deployer", "$VARIABLE:OWNER",
        calldata=[
            "$VARIABLE:OWNER",
            "FestivalPoap.address",
            "SessionPoap.address",
            "1",  # sessionsEnabled = true
        ],
        comment=("Deploy Festival with sessionsEnabled=1. OWNER holds "
                 "DEFAULT_ADMIN_ROLE / MANAGER_ROLE / VOLUNTEER_ROLE from "
                 "the constructor.")))

    # ── OWNER one-time wiring ──────────────────────────────────────────
    inputs.append(fc(
        "W3S", "grantRole", "$VARIABLE:OWNER",
        calldata=[W3S_W3F_ROLE, "$VARIABLE:OWNER"],
        comment=("OWNER grants W3F to itself so it can grant VOLUNTEER role "
                 "to per-day callers below.")))

    inputs.append(fc(
        "TransactionLog", "addShopAdmin", "$VARIABLE:OWNER",
        calldata=["Driver.address"],
        comment=("Grant T3rminalDriver shopAdmin so Driver.closeDay can "
                 "call TransactionLog.finalizeDay (onlyShopAdmin).")))

    inputs.append(fc(
        "FestivalPoap", "authorizeMinter", "$VARIABLE:OWNER",
        calldata=["Festival.address"],
        comment=("Authorize Festival to mint POAPs. Must precede "
                 "Festival.setup which calls setVerificationDeadline "
                 "(onlyAuthorizedMinter).")))

    inputs.append(fc(
        "SessionPoap", "transferFactory", "$VARIABLE:OWNER",
        calldata=["Festival.address"],
        comment=("Transfer SessionPoap factory rights to Festival so each "
                 "createSession can authorize the new FestivalSession as a "
                 "session-POAP minter.")))

    inputs.append(fc(
        "Festival", "setup", "$VARIABLE:OWNER",
        calldata=[
            FESTIVAL_NAME_HEX,
            str(FESTIVAL_START),
            str(FESTIVAL_END),
            str(VERIFICATION_WINDOW),
            str(FESTIVAL_CAPACITY),
        ],
        comment=("Festival.setup with 30-day window (May 2033), 7-day "
                 "verification, 5000 capacity. Capacity easily covers "
                 "N_DAYS*N_OPS POAPs minted in Block B's checkIns.")))

    # ── Per-day setup (start_watcher here) ─────────────────────────────
    inputs.append({
        "comment": (
            f"Per-day setup: {N_DAYS} iters. Each iter allocates DAY_CALLER_K "
            "and grants it 2 roles (W3S VOLUNTEER, Festival VOLUNTEER_ROLE), "
            "then DAY_CALLER_K self-registers as a P2P agent and creates a "
            "P2P offer listing itself as the only allowed agent. "
            "consolidate_state propagates DAY_CALLER_0..N-1 and "
            "OFFER_ID_0..N-1 to the case scope so the measured days loop "
            "below can reference them via $VARIABLE composition. "
            "start_watcher: true ⇒ K=0 warm-up is the watcher cutoff; "
            "K=1..N-1 parallel setup iters + entire measured loop tracked."),
        "repeat": N_DAYS,
        "capture_index": "$VARIABLE:K",
        "consolidate_state": True,
        "start_watcher": True,
        "steps": [
            alloc("DAY_CALLER_$VARIABLE:K"),
            fc("W3S", "grantRole", "$VARIABLE:OWNER",
               calldata=[
                   W3S_VOLUNTEER_ROLE,
                   "$VARIABLE:DAY_CALLER_$VARIABLE:K",
               ],
               comment=(
                   "Grant W3S VOLUNTEER role so DAY_CALLER can call "
                   "W3S.checkIn in Block B.")),
            fc("Festival", "grantRole", "$VARIABLE:OWNER",
               calldata=[
                   FEST_VOLUNTEER_ROLE,
                   "$VARIABLE:DAY_CALLER_$VARIABLE:K",
               ],
               comment=(
                   "Grant Festival VOLUNTEER_ROLE so DAY_CALLER can call "
                   "Festival.checkIn in Block B.")),
            fc("P2PMarket", "registerAgent",
               "$VARIABLE:DAY_CALLER_$VARIABLE:K",
               calldata=register_agent_calldata(),
               comment="DAY_CALLER self-registers as a handoff agent."),
            fc("P2PMarket", "createOffer",
               "$VARIABLE:DAY_CALLER_$VARIABLE:K",
               calldata=create_offer_calldata(
                   "$VARIABLE:DAY_CALLER_$VARIABLE:K"),
               variable_assignments={
                   "return_data": ["OFFER_ID_$VARIABLE:K"],
               },
               comment=(
                   "DAY_CALLER creates SELL offer listing itself as the "
                   "only allowed agent. offerId captured into OFFER_ID_K "
                   "for the measured trade loop.")),
        ],
    })

    # ── Measured days loop ─────────────────────────────────────────────
    inputs.append(build_days_outer())

    return inputs


CASE_COMMENT = (
    "Combined workload exercising 4 dapps in parallel: W3S (tick3t — "
    "github.com/paritytech/tick3t), Festival (github.com/paritytech/festival), "
    "T3rminal (github.com/paritytech/t3rminal), and P2PMarket "
    "(github.com/paritytech/p2p-market). Each day runs 3 sequential inner "
    "repeat blocks (A, B, C), each with {ops} parallel iters touching all "
    "4 dapps. Festival's register→checkIn→createSession is split across "
    "A→B→C leveraging the sequential ordering for cross-sender deps. "
    "W3S buy→checkIn similarly uses block sequence (buy in A, checkIn in B). "
    "P2P does a full lock/confirm/confirm cycle in every block from a single "
    "DAY_CALLER (mempool nonce-ordered). T3rminal records 3 sales per iter "
    "(one per block) + 1 closeDay per day. Across {days} parallel outer "
    "days, the chain sees all 4 contracts simultaneously active."
).format(days=N_DAYS, ops=N_OPS)


def main():
    doc = {
        "$schema": "../../../../schema.json",
        "modes": ["Y Mz S+", "Y Ms S+"],
        "cases": [{
            "name": f"W3S{' smoke' if SMOKE else ''}",
            "comment": CASE_COMMENT,
            "inputs": build_inputs(),
        }],
        "contracts": {
            "W3S": "W3S.sol:W3S",
            "BulletinIndex": "T3rminal.sol:T3rminalBulletinIndex",
            "TransactionLog": "T3rminal.sol:T3rminalTransactionLog",
            "Driver": "T3rminal.sol:T3rminalDriver",
            "P2PMarket": "P2PMarket.sol:P2PMarket",
            "FestivalPoap": "AttendancePOAP.sol:AttendancePOAP",
            "SessionPoap": "AttendancePOAP.sol:AttendancePOAP",
            "Festival": "Festival.sol:Festival",
            "FestivalSession": "Festival.sol:FestivalSession",
        },
    }
    json.dump(doc, sys.stdout, indent=2)
    print()


if __name__ == "__main__":
    main()
