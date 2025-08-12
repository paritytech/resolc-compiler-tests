contract C {
    mapping (string => uint) m_nameToRecord;
    function set(string calldata key, uint value) external {
        m_nameToRecord[key] = value;
    }
    function get(string calldata key) external view returns (uint) {
        return m_nameToRecord[key];
    }
    function setFixed(uint value) external {
        m_nameToRecord["fixed"] = value;
    }
    function getFixed() external view returns (uint) {
        return m_nameToRecord["fixed"];
    }
}