#!/usr/bin/env python3
"""
Generator for the festival workload's test.json.

Usage:
    python3 gen_test.py            > test.json         # full benchmark
    python3 gen_test.py --smoke    > test-smoke.json   # tiny end-to-end check

Two attendee pools with cross-pool peer verifies:

  - PRE_ATTENDEE_K_J — pre-registered attendees, identified by an
    (outer K, inner J) coordinate. Total = OUTER * INNER distinct attendees.
    Each self-registers, then gets checked in (volunteer-side) in the
    combined door block.

  - NEW_ATTENDEE_K   — walk-ins, identified by outer K only. Total = OUTER.
    Registered and checked in atomically via manualCheckIn inside the
    combined door block.

The door-side workload does OUTER*INNER checkIns and OUTER manualCheckIns —
ratio INNER:1, fully tunable.

The watcher arms at the register-spam phase. Three measured phases:

  1. Register spam (nested OUTER × INNER) — every (K, J) attendee
     self-registers.

  2. Combined door spam (OUTER outer, INNER inner) — for each outer K:
       alloc NEW_K
       inner repeat INNER: checkIn(PRE_K_J)  from VOLUNTEER_0  → PRE_K_J_POAP
       manualCheckIn(NEW_K)                  from VOLUNTEER_1  → NEW_K_POAP

  3. Event-day spam — two repeats with **cross-pool peer verifies**:
       PRE pool: each (K, J) attendee createSession + V verifies of
                 NEW_M_POAP    (M=0..V-1, target is in the OTHER pool)
       NEW pool: each K walk-in createSession + V verifies of
                 PRE_M_0_POAP  (M=0..V-1, J literal 0 → addresses a
                 deterministic slice of the PRE pool)

Cross-pool targeting guarantees no self-verify (verifier and target are
in disjoint pools) and no AlreadyVerified collisions (every (verifier,
target) pair is unique because verifier varies per iter).

Constraint: V ≤ OUTER — we need V distinct K-values in each pool to draw
V distinct target POAPs.
"""

import json
import sys

SMOKE = "--smoke" in sys.argv[1:]

# ── Tunables ──
# OUTER × INNER door iterations.
#   total pre-attendees      = OUTER * INNER
#   total walk-ins           = OUTER
#   total checkIns           = OUTER * INNER
#   total manualCheckIns     = OUTER
# V = verifies per attendee (cross-pool peer-verify count).
if SMOKE:
    OUTER = 2
    INNER = 2               # 4 pre + 2 walk-ins
    V = 2                   # 2 verifies per attendee (V ≤ OUTER)
else:
    OUTER = 500
    INNER = 3               # 1500 pre + 500 walk-ins  (~75 / 25 mix)
    V = 10                  # 10 verifies per attendee

assert V <= OUTER, (
    f"V ({V}) must be <= OUTER ({OUTER}): the cross-pool target lookup "
    f"uses M=0..V-1 as an outer-K index into the OTHER pool, which has "
    f"OUTER distinct K-values."
)

# Festival window: May 2033, 30 days long. Bounds are far in the future so
# block.timestamp at run time is always below startTime; the contract
# doesn't gate operations on wall-clock, but setVerificationDeadline (called
# by Festival.setup if verificationWindow > 0) requires deadline > now.
FESTIVAL_START = 2_000_000_000
DAY = 86_400
FESTIVAL_END = FESTIVAL_START + 30 * DAY
VERIFICATION_WINDOW = 7 * DAY
CAPACITY = 5000

# 32-byte CID placeholders. Real workloads would use Bulletin-Chain CIDs;
# any literal works because contracts only store, never read.
FESTIVAL_CID = "0x" + "f9c21717" + "00" * 28
SESSION_CID  = "0x" + "5e551011" + "00" * 28

# keccak256("VOLUNTEER_ROLE") — verified via `cast keccak "VOLUNTEER_ROLE"`.
VOLUNTEER_ROLE = "0xf7f0fdec05d2d68a3ca32c78a26a4236722632f1d98fdee081484acf844fc7dc"

# RPN expression: sessionStart = FESTIVAL_START + (K mod 30) * DAY.
# Each attendee only creates ONE session, so the per-creator-per-day cap of
# 2 (enforced by Festival.createSession) is comfortably below the limit
# regardless of how many other attendees pick the same day index.
SESSION_START_EXPR = (
    f"$VARIABLE:K $VARIABLE:K 30 / 30 * - {DAY} * {FESTIVAL_START} +"
)
SESSION_END_EXPR = (
    f"$VARIABLE:K $VARIABLE:K 30 / 30 * - {DAY} * {FESTIVAL_START} + 7200 +"
)


def fc(comment, instance, method, caller, calldata=None, value=None,
       variable_assignments=None):
    step = {"comment": comment, "instance": instance, "method": method,
            "caller": caller}
    if calldata is not None:
        step["calldata"] = calldata
    if value is not None:
        step["value"] = value
    if variable_assignments is not None:
        step["variable_assignments"] = variable_assignments
    return step


def alloc(name, comment=None):
    s = {"allocate_account": f"$VARIABLE:{name}"}
    if comment:
        s["comment"] = comment
    return s


def register_block(outer, inner, start_watcher):
    """Nested OUTER × INNER register-spam block."""
    inner_block = {
        "comment": (
            f"Inner repeat: {inner} pre-attendees per outer iter. Each iter "
            "allocates PRE_ATTENDEE_K_J via $VARIABLE: composition and that "
            "attendee submits register() themselves."),
        "repeat": inner,
        "capture_index": "$VARIABLE:J",
        "consolidate_state": True,
        "steps": [
            alloc("PRE_ATTENDEE_$VARIABLE:K_$VARIABLE:J"),
            fc(None, "Festival", "register",
               "$VARIABLE:PRE_ATTENDEE_$VARIABLE:K_$VARIABLE:J", calldata=[]),
        ],
    }
    block = {
        "comment": (
            f"Register spam: outer {outer} × inner {inner} = {outer * inner} "
            "pre-attendees. start_watcher: true so benchmark metrics begin "
            "at the start of this phase."),
        "repeat": outer,
        "capture_index": "$VARIABLE:K",
        "consolidate_state": True,
        "steps": [inner_block],
    }
    if start_watcher:
        block["start_watcher"] = True
    return block


def combined_door_block(outer, inner):
    """Combined door spam: each outer iter does INNER checkIns + 1 manualCheckIn."""
    inner_checkin = {
        "comment": (
            f"Inner repeat: {inner} checkIns per outer iter (VOLUNTEER_0). "
            "Captures the returned POAP id into PRE_ATTENDEE_K_J_POAP."),
        "repeat": inner,
        "capture_index": "$VARIABLE:J",
        "consolidate_state": True,
        "steps": [
            fc(None, "Festival", "checkIn",
               "$VARIABLE:VOLUNTEER_0",
               calldata=["$VARIABLE:PRE_ATTENDEE_$VARIABLE:K_$VARIABLE:J"],
               variable_assignments={
                   "return_data":
                       ["PRE_ATTENDEE_$VARIABLE:K_$VARIABLE:J_POAP"],
               }),
        ],
    }
    return {
        "comment": (
            f"Combined door spam: outer {outer} × inner {inner} checkIns "
            f"(VOLUNTEER_0) plus {outer} manualCheckIns (VOLUNTEER_1). "
            "After this phase, PRE_ATTENDEE_K_J_POAP and NEW_ATTENDEE_K_POAP "
            "are visible in parent scope for the event-day phase."),
        "repeat": outer,
        "capture_index": "$VARIABLE:K",
        "consolidate_state": True,
        "steps": [
            alloc("NEW_ATTENDEE_$VARIABLE:K"),
            inner_checkin,
            fc(None, "Festival", "manualCheckIn",
               "$VARIABLE:VOLUNTEER_1",
               calldata=["$VARIABLE:NEW_ATTENDEE_$VARIABLE:K"],
               variable_assignments={
                   "return_data": ["NEW_ATTENDEE_$VARIABLE:K_POAP"],
               }),
        ],
    }


def event_day_pre_pool(outer, inner, v):
    """Nested OUTER × INNER × V event-day block for the PRE pool.

    Each (K, J) attendee fires 1 createSession and V verifies. Verify
    targets are NEW_M_POAP for M=0..V-1 (cross-pool: PRE verifies NEW),
    which prevents self-verify since the pools are disjoint.
    """
    caller_ref = "$VARIABLE:PRE_ATTENDEE_$VARIABLE:K_$VARIABLE:J"
    poap_ref = "$VARIABLE:PRE_ATTENDEE_$VARIABLE:K_$VARIABLE:J_POAP"
    target_ref = "$VARIABLE:NEW_ATTENDEE_$VARIABLE:M_POAP"
    innermost_verifies = {
        "comment": (
            f"Innermost repeat: {v} verifies per (K, J) pre-attendee. Each "
            "iter targets a different NEW_M_POAP (M = innermost capture)."),
        "repeat": v,
        "capture_index": "$VARIABLE:M",
        "steps": [
            fc(None, "FestivalPoap", "verify", caller_ref,
               calldata=[poap_ref, target_ref]),
        ],
    }
    inner_J_block = {
        "comment": (
            f"Inner repeat: createSession + {v} verifies per (K, J) "
            "pre-attendee."),
        "repeat": inner,
        "capture_index": "$VARIABLE:J",
        "steps": [
            fc(None, "Festival", "createSession", caller_ref,
               calldata=[SESSION_CID, SESSION_START_EXPR, SESSION_END_EXPR,
                         "0", poap_ref]),
            innermost_verifies,
        ],
    }
    return {
        "comment": (
            f"Event-day for the PRE pool: outer {outer} × inner {inner} × "
            f"innermost {v}. {outer * inner} createSessions and "
            f"{outer * inner * v} cross-pool verifies (PRE verifies NEW). "
            "Each (verifier, target) pair is unique since the verifier "
            "varies per (K, J) iter."),
        "repeat": outer,
        "capture_index": "$VARIABLE:K",
        "steps": [inner_J_block],
    }


def event_day_new_pool(outer, v):
    """OUTER × V event-day block for the NEW pool.

    Each K attendee fires 1 createSession and V verifies. Verify targets
    are PRE_M_0_POAP for M=0..V-1 (cross-pool: NEW verifies PRE; J is
    pinned to literal 0 to draw from a deterministic slice).
    """
    caller_ref = "$VARIABLE:NEW_ATTENDEE_$VARIABLE:K"
    poap_ref = "$VARIABLE:NEW_ATTENDEE_$VARIABLE:K_POAP"
    target_ref = "$VARIABLE:PRE_ATTENDEE_$VARIABLE:M_0_POAP"
    innermost_verifies = {
        "comment": (
            f"Innermost repeat: {v} verifies per NEW_K walk-in. Each iter "
            "targets a different PRE_M_0_POAP (M = innermost capture, J "
            "pinned to literal 0)."),
        "repeat": v,
        "capture_index": "$VARIABLE:M",
        "steps": [
            fc(None, "FestivalPoap", "verify", caller_ref,
               calldata=[poap_ref, target_ref]),
        ],
    }
    return {
        "comment": (
            f"Event-day for the NEW pool: outer {outer} × innermost {v}. "
            f"{outer} createSessions and {outer * v} cross-pool verifies "
            "(NEW verifies PRE)."),
        "repeat": outer,
        "capture_index": "$VARIABLE:K",
        "steps": [
            fc(None, "Festival", "createSession", caller_ref,
               calldata=[SESSION_CID, SESSION_START_EXPR, SESSION_END_EXPR,
                         "0", poap_ref]),
            innermost_verifies,
        ],
    }


def main():
    inputs = []

    # ── Allocations ──
    inputs.append(alloc("DEPLOYER",
        "DEPLOYER (key 1) deploys all contracts and holds all roles "
        "(DEFAULT_ADMIN_ROLE / MANAGER_ROLE / VOLUNTEER_ROLE) from the "
        "Festival constructor."))
    inputs.append(alloc("VOLUNTEER_0",
        "Two volunteer accounts split the door-side nonce streams: "
        "VOLUNTEER_0 calls checkIn (pre-registered pool), VOLUNTEER_1 "
        "calls manualCheckIn (walk-in pool)."))
    inputs.append(alloc("VOLUNTEER_1"))

    # ── Setup ──
    inputs.append(fc(
        "Deploy the festival-level AttendancePOAP. DEPLOYER retains factory "
        "rights — only it can authorise minters on this collection.",
        "FestivalPoap", "#deployer", "$VARIABLE:DEPLOYER",
        calldata=["$VARIABLE:DEPLOYER"]))
    inputs.append(fc(
        "Deploy the session-level AttendancePOAP. Factory rights are handed "
        "to Festival in the next step so each new FestivalSession can be "
        "authorised as a session-POAP minter at createSession time.",
        "SessionPoap", "#deployer", "$VARIABLE:DEPLOYER",
        calldata=["$VARIABLE:DEPLOYER"]))
    inputs.append(fc(
        "Deploy Festival with sessionsEnabled=true.",
        "Festival", "#deployer", "$VARIABLE:DEPLOYER",
        calldata=["$VARIABLE:DEPLOYER", "FestivalPoap.address",
                  "SessionPoap.address", "1"]))
    inputs.append(fc(
        "Authorise Festival on the festival POAP. MUST come before setup() "
        "because setup() calls setVerificationDeadline which is "
        "onlyAuthorizedMinter.",
        "FestivalPoap", "authorizeMinter", "$VARIABLE:DEPLOYER",
        calldata=["Festival.address"]))
    inputs.append(fc(
        "Transfer factory rights on the session POAP to Festival.",
        "SessionPoap", "transferFactory", "$VARIABLE:DEPLOYER",
        calldata=["Festival.address"]))
    inputs.append(fc(
        f"Festival.setup: window {FESTIVAL_START}..{FESTIVAL_END} (30 days, "
        f"May 2033), verificationWindow={VERIFICATION_WINDOW}s (7 days "
        f"post-event), capacity={CAPACITY}.",
        "Festival", "setup", "$VARIABLE:DEPLOYER",
        calldata=[FESTIVAL_CID, str(FESTIVAL_START), str(FESTIVAL_END),
                  str(VERIFICATION_WINDOW), str(CAPACITY)]))
    inputs.append(fc(
        "Grant VOLUNTEER_ROLE to two volunteer accounts so the door-side "
        "phase has two independent nonce streams (checkIn vs manualCheckIn).",
        "Festival", "grantRole", "$VARIABLE:DEPLOYER",
        calldata=[VOLUNTEER_ROLE, "$VARIABLE:VOLUNTEER_0"]))
    inputs.append(fc(
        None,
        "Festival", "grantRole", "$VARIABLE:DEPLOYER",
        calldata=[VOLUNTEER_ROLE, "$VARIABLE:VOLUNTEER_1"]))

    # ── Phase 1 (measured): nested register spam ──
    inputs.append(register_block(OUTER, INNER, start_watcher=True))

    # ── Phase 2 (measured): combined door spam ──
    inputs.append(combined_door_block(OUTER, INNER))

    # ── Phase 3 (measured): event-day across both pools ──
    inputs.append(event_day_pre_pool(OUTER, INNER, V))
    inputs.append(event_day_new_pool(OUTER, V))

    case = {
        "name": "Festival smoke" if SMOKE else "Festival",
        "comment": (
            "Realistic festival workload exercising nested repeat blocks "
            "and variable-name composition with multiple inner $VARIABLE: "
            "refs. Setup deploys contracts and wires authorisation; no "
            "pre-watcher attendee onboarding is needed because event-day "
            "uses cross-pool peer verifies (PRE verifies NEW, NEW verifies "
            "PRE) which avoids self-collision without anchor POAPs. "
            "Three measured phases: "
            f"{OUTER * INNER} attendee-initiated register() calls, "
            f"{OUTER} combined-door outer iters ({OUTER * INNER} checkIns "
            f"+ {OUTER} manualCheckIns), and "
            f"{OUTER * INNER + OUTER} createSessions plus "
            f"{(OUTER * INNER + OUTER) * V} cross-pool verifies."),
        "inputs": inputs,
    }
    doc = {
        "$schema": "../../../../schema.json",
        "modes": ["Y Mz S+", "Y Ms S+"],
        "cases": [case],
        "contracts": {
            "Festival":        "Festival.sol:Festival",
            # FestivalSession MUST be declared so its bytecode is uploaded
            # to pallet-revive. Without it, Festival.createSession's
            # `new FestivalSession(...)` fails with Module::CodeNotFound.
            # See driver.rs:218-227 (upload filter is keyed on this map).
            "FestivalSession": "Festival.sol:FestivalSession",
            "FestivalPoap":    "AttendancePOAP.sol:AttendancePOAP",
            "SessionPoap":     "AttendancePOAP.sol:AttendancePOAP",
        },
    }
    json.dump(doc, sys.stdout, indent=2)
    sys.stdout.write("\n")


if __name__ == "__main__":
    main()
