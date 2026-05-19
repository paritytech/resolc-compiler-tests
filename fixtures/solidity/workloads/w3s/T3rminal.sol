// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// =========================================================================
// IT3rminalBulletinIndex (inlined from interfaces/IT3rminalBulletinIndex.sol)
// =========================================================================
interface IT3rminalBulletinIndex {
    struct DayMetadata {
        string cid;
        uint256 entryCount;
        uint256 publishedAt;
        bool exists;
    }

    function storeDailyReport(
        string memory date,
        string memory cid,
        uint256 entryCount
    ) external;

    function getCID(address shop, string memory date)
        external
        view
        returns (string memory);

    function getMetadata(address shop, string memory date)
        external
        view
        returns (DayMetadata memory);

    function dateExists(address shop, string memory date)
        external
        view
        returns (bool);
}

// =========================================================================
// T3rminalBulletinIndex (inlined from T3rminalBulletinIndex.sol)
// =========================================================================
contract T3rminalBulletinIndex is IT3rminalBulletinIndex {
    mapping(address => mapping(bytes32 => string)) private cidIndex;
    mapping(address => mapping(bytes32 => DayMetadata)) private dayMetadata;
    mapping(address => string[]) private shopDates;
    address public owner;

    event DailyReportStored(
        address indexed shop,
        string indexed date,
        string cid,
        uint256 entryCount
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function storeDailyReport(
        string memory date,
        string memory cid,
        uint256 entryCount
    ) external override {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        require(bytes(cid).length > 0, "Invalid CID");
        bool isUpdate = dayMetadata[msg.sender][dateKey].exists;
        cidIndex[msg.sender][dateKey] = cid;
        dayMetadata[msg.sender][dateKey] = DayMetadata({
            cid: cid,
            entryCount: entryCount,
            publishedAt: block.timestamp,
            exists: true
        });
        if (!isUpdate) {
            shopDates[msg.sender].push(date);
        }
        emit DailyReportStored(msg.sender, date, cid, entryCount);
    }

    function getCID(address shop, string memory date)
        external
        view
        override
        returns (string memory)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return cidIndex[shop][dateKey];
    }

    function getMetadata(address shop, string memory date)
        external
        view
        override
        returns (DayMetadata memory)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return dayMetadata[shop][dateKey];
    }

    function dateExists(address shop, string memory date)
        external
        view
        override
        returns (bool)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return dayMetadata[shop][dateKey].exists;
    }

    function getAllDates(address shop)
        external
        view
        returns (string[] memory)
    {
        return shopDates[shop];
    }

    function getReportCount(address shop)
        external
        view
        returns (uint256)
    {
        return shopDates[shop].length;
    }

    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Invalid new owner");
        owner = newOwner;
    }
}

// =========================================================================
// T3rminalTransactionLog (inlined from T3rminalTransactionLog.sol)
// =========================================================================
contract T3rminalTransactionLog {
    enum TransactionStatus {
        Finished,
        Refunded
    }

    struct TransactionEntry {
        string saleId;
        address merchant;
        address customer;
        uint256 amount;
        string asset;
        bytes32 txHash;
        uint256 blockNumber;
        uint256 timestamp;
        string terminalId;
        TransactionStatus status;
        string refundOf;
        string originalCustomer;
        string originalMerchant;
        uint256 originalBlockNumber;
        string originalBlockHash;
    }

    struct DayStatus {
        bool finalized;
        string reportCid;
        uint256 entryCount;
        uint256 finalizedAt;
    }

    mapping(bytes32 => TransactionEntry[]) private dailyBuffer;
    mapping(bytes32 => DayStatus) public dayStatus;
    mapping(address => bool) public shopAdmins;
    mapping(address => string) public terminals;
    mapping(bytes32 => bytes32) private saleIdToDay;
    mapping(bytes32 => bytes32) private refundLinks;
    IT3rminalBulletinIndex public bulletinIndex;
    address public owner;

    event TransactionRecorded(
        string indexed saleId,
        address indexed customer,
        uint256 amount,
        string asset
    );

    event RefundIssued(
        string indexed refundSaleId,
        string indexed originalSaleId,
        uint256 amount,
        string asset
    );

    event DayFinalized(
        string indexed date,
        string reportCid,
        uint256 entryCount
    );

    event ShopAdminAdded(address indexed admin);
    event ShopAdminRemoved(address indexed admin);
    event TerminalAdded(address indexed terminal, string terminalId);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier onlyShopAdmin() {
        require(shopAdmins[msg.sender], "Not shop admin");
        _;
    }

    constructor(address _bulletinIndex) {
        owner = msg.sender;
        shopAdmins[msg.sender] = true;
        terminals[msg.sender] = "OWNER";
        if (_bulletinIndex != address(0)) {
            bulletinIndex = IT3rminalBulletinIndex(_bulletinIndex);
        }
    }

    function recordTransaction(
        string memory saleId,
        address customer,
        uint256 amount,
        string memory asset,
        bytes32 txHash,
        string memory date,
        string memory terminalId,
        string memory originalCustomer,
        string memory originalMerchant,
        uint256 originalBlockNumber,
        string memory originalBlockHash
    ) external {
        require(bytes(saleId).length == 26, "Invalid saleId length");
        require(customer != address(0), "Invalid customer");
        require(amount > 0, "Invalid amount");
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        require(!dayStatus[dateKey].finalized, "Day already finalized");
        bytes32 saleIdKey = keccak256(abi.encodePacked(saleId));
        require(saleIdToDay[saleIdKey] == bytes32(0), "SaleId already exists");
        TransactionEntry memory entry = TransactionEntry({
            saleId: saleId,
            merchant: msg.sender,
            customer: customer,
            amount: amount,
            asset: asset,
            txHash: txHash,
            blockNumber: block.number,
            timestamp: block.timestamp,
            terminalId: terminalId,
            status: TransactionStatus.Finished,
            refundOf: "",
            originalCustomer: originalCustomer,
            originalMerchant: originalMerchant,
            originalBlockNumber: originalBlockNumber,
            originalBlockHash: originalBlockHash
        });
        dailyBuffer[dateKey].push(entry);
        saleIdToDay[saleIdKey] = dateKey;
        emit TransactionRecorded(saleId, customer, amount, asset);
    }

    function recordRefund(
        string memory originalSaleId,
        string memory refundSaleId,
        address customer,
        uint256 amount,
        string memory asset,
        bytes32 txHash,
        string memory date,
        string memory originalCustomer,
        string memory originalMerchant,
        uint256 originalBlockNumber,
        string memory originalBlockHash
    ) external {
        bytes32 originalSaleIdKey = keccak256(abi.encodePacked(originalSaleId));
        require(saleIdToDay[originalSaleIdKey] != bytes32(0), "Original sale not found");
        require(refundLinks[originalSaleIdKey] == bytes32(0), "Already refunded");
        require(bytes(refundSaleId).length == 26, "Invalid refund saleId");
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        require(!dayStatus[dateKey].finalized, "Day already finalized");
        bytes32 refundSaleIdKey = keccak256(abi.encodePacked(refundSaleId));
        require(saleIdToDay[refundSaleIdKey] == bytes32(0), "Refund saleId already exists");
        TransactionEntry memory refundEntry = TransactionEntry({
            saleId: refundSaleId,
            merchant: msg.sender,
            customer: customer,
            amount: amount,
            asset: asset,
            txHash: txHash,
            blockNumber: block.number,
            timestamp: block.timestamp,
            terminalId: "REFUND",
            status: TransactionStatus.Refunded,
            refundOf: originalSaleId,
            originalCustomer: originalCustomer,
            originalMerchant: originalMerchant,
            originalBlockNumber: originalBlockNumber,
            originalBlockHash: originalBlockHash
        });
        dailyBuffer[dateKey].push(refundEntry);
        saleIdToDay[refundSaleIdKey] = dateKey;
        refundLinks[originalSaleIdKey] = refundSaleIdKey;
        emit RefundIssued(refundSaleId, originalSaleId, amount, asset);
    }

    function finalizeDay(
        string memory date,
        string memory reportCid,
        uint256 expectedEntryCount
    ) external onlyShopAdmin {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        require(!dayStatus[dateKey].finalized, "Day already finalized");
        require(bytes(reportCid).length > 0, "Invalid CID");
        if (address(bulletinIndex) != address(0)) {
            string memory storedCid = bulletinIndex.getCID(msg.sender, date);
            require(
                keccak256(abi.encodePacked(storedCid)) == keccak256(abi.encodePacked(reportCid)),
                "CID not in bulletin index"
            );
        }
        uint256 actualCount = dailyBuffer[dateKey].length;
        require(actualCount == expectedEntryCount, "Entry count mismatch");
        dayStatus[dateKey] = DayStatus({
            finalized: true,
            reportCid: reportCid,
            entryCount: actualCount,
            finalizedAt: block.timestamp
        });
        delete dailyBuffer[dateKey];
        emit DayFinalized(date, reportCid, actualCount);
    }

    function getDayEntries(string memory date)
        external
        view
        returns (TransactionEntry[] memory)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return dailyBuffer[dateKey];
    }

    function getDayEntryCount(string memory date)
        external
        view
        returns (uint256)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return dailyBuffer[dateKey].length;
    }

    function isDayFinalized(string memory date)
        external
        view
        returns (bool)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return dayStatus[dateKey].finalized;
    }

    function getDayStatusInfo(string memory date)
        external
        view
        returns (DayStatus memory)
    {
        bytes32 dateKey = keccak256(abi.encodePacked(date));
        return dayStatus[dateKey];
    }

    function saleExists(string memory saleId)
        external
        view
        returns (bool)
    {
        bytes32 saleIdKey = keccak256(abi.encodePacked(saleId));
        return saleIdToDay[saleIdKey] != bytes32(0);
    }

    function isRefunded(string memory saleId)
        external
        view
        returns (bool)
    {
        bytes32 saleIdKey = keccak256(abi.encodePacked(saleId));
        return refundLinks[saleIdKey] != bytes32(0);
    }

    function addShopAdmin(address admin) external onlyOwner {
        shopAdmins[admin] = true;
        emit ShopAdminAdded(admin);
    }

    function removeShopAdmin(address admin) external onlyOwner {
        shopAdmins[admin] = false;
        emit ShopAdminRemoved(admin);
    }

    function addTerminal(address terminal, string memory terminalId) external onlyShopAdmin {
        terminals[terminal] = terminalId;
        emit TerminalAdded(terminal, terminalId);
    }

    function updateBulletinIndex(address _bulletinIndex) external onlyOwner {
        bulletinIndex = IT3rminalBulletinIndex(_bulletinIndex);
    }

    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Invalid new owner");
        owner = newOwner;
    }
}

// =========================================================================
// T3rminalDriver — benchmark-side helper contract (not part of the real
// T3RMINAL deployment). Generates the per-iter unique strings (saleId, date,
// CID) on-chain so the workload can drive recordTransaction / recordRefund /
// storeDailyReport / finalizeDay from inside repeat blocks where the JSON
// format only gives us numeric variables. The hot path of the underlying
// TransactionLog contract is unchanged — this just decouples uniqueness
// from string composition.
// =========================================================================
contract T3rminalDriver {
    T3rminalTransactionLog public log;
    T3rminalBulletinIndex public bulletinIndex;

    constructor(address _log, address _bulletinIndex) {
        log = T3rminalTransactionLog(_log);
        bulletinIndex = T3rminalBulletinIndex(_bulletinIndex);
    }

    /// Layout: <prefix:5><day:DD>-<nonce:17 digits> = 5+2+1+17+1 = 26 chars.
    /// prefix is 4 ASCII chars + '-' (sale = "T3RM-", refund = "RFND-").
    function _genSaleId(bytes5 prefix, uint256 dayIndex, uint256 nonce)
        internal
        pure
        returns (string memory)
    {
        bytes memory result = new bytes(26);
        for (uint256 i = 0; i < 5; i++) {
            result[i] = prefix[i];
        }
        result[5] = bytes1(uint8(48 + (dayIndex / 10) % 10));
        result[6] = bytes1(uint8(48 + dayIndex % 10));
        result[7] = '-';
        for (uint256 i = 0; i < 18; i++) {
            result[25 - i] = bytes1(uint8(48 + (nonce % 10)));
            nonce /= 10;
        }
        return string(result);
    }

    /// Layout: "2026-05-DD" (10 chars). Limited to a month for simplicity —
    /// caller's responsibility to keep dayIndex < 99.
    function _genDate(uint256 dayIndex) internal pure returns (string memory) {
        bytes memory result = new bytes(10);
        result[0] = '2';
        result[1] = '0';
        result[2] = '2';
        result[3] = '6';
        result[4] = '-';
        result[5] = '0';
        result[6] = '5';
        result[7] = '-';
        result[8] = bytes1(uint8(48 + (dayIndex / 10) % 10));
        result[9] = bytes1(uint8(48 + dayIndex % 10));
        return string(result);
    }

    /// CID-like placeholder. Real workloads would compute this off-chain
    /// from the day's data; the contracts only store and compare verbatim.
    function _genCid(uint256 dayIndex) internal pure returns (string memory) {
        bytes memory result = new bytes(20);
        result[0] = 'b';
        result[1] = 'a';
        result[2] = 'f';
        result[3] = 'y';
        result[4] = '-';
        result[5] = 'D';
        result[6] = bytes1(uint8(48 + (dayIndex / 10) % 10));
        result[7] = bytes1(uint8(48 + dayIndex % 10));
        for (uint256 i = 8; i < 20; i++) {
            result[i] = '0';
        }
        return string(result);
    }

    function sell(
        uint256 dayIndex,
        uint256 saleNonce,
        address customer,
        uint256 amount,
        uint256 originalBlockNumber
    ) external {
        log.recordTransaction(
            _genSaleId(0x5433524d2d, dayIndex, saleNonce), // "T3RM-"
            customer,
            amount,
            "DOT",
            bytes32(saleNonce),
            _genDate(dayIndex),
            "T-0",
            "5GrwvaEF5zXb26Fz9rcQpDWS57CtERHpNehXCPcNoHGKutQY",
            "5FHneW46xGXgs5mUiveU4sbTyGBzmstUspZC92UhjJM694ty",
            originalBlockNumber,
            "0xabababababababababababababababababababababababababababababababab"
        );
    }

    function refund(
        uint256 dayIndex,
        uint256 originalSaleNonce,
        uint256 refundSaleNonce,
        address customer,
        uint256 amount,
        uint256 originalBlockNumber
    ) external {
        log.recordRefund(
            _genSaleId(0x5433524d2d, dayIndex, originalSaleNonce), // "T3RM-"
            _genSaleId(0x52464e442d, dayIndex, refundSaleNonce),   // "RFND-"
            customer,
            amount,
            "DOT",
            bytes32(refundSaleNonce ^ (uint256(1) << 250)), // distinct from sale txHash
            _genDate(dayIndex),
            "5GrwvaEF5zXb26Fz9rcQpDWS57CtERHpNehXCPcNoHGKutQY",
            "5FHneW46xGXgs5mUiveU4sbTyGBzmstUspZC92UhjJM694ty",
            originalBlockNumber,
            "0xabababababababababababababababababababababababababababababababab"
        );
    }

    /// Publishes the daily CID to BulletinIndex from this contract's address,
    /// then finalizes the day on TransactionLog (which verifies the CID
    /// matches the one stored for msg.sender). Both calls happen here so
    /// msg.sender is consistent — this contract must therefore be granted
    /// shopAdmin on TransactionLog before this can run.
    function closeDay(uint256 dayIndex, uint256 entryCount) external {
        string memory date = _genDate(dayIndex);
        string memory cid = _genCid(dayIndex);
        bulletinIndex.storeDailyReport(date, cid, entryCount);
        log.finalizeDay(date, cid, entryCount);
    }
}
