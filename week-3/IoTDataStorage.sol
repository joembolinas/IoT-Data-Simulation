// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogisticsDataStorage {
    struct LogisticsRecord {
        uint256 blockchainTimestamp; // Timestamp when data is stored on blockchain
        string originalTimestamp;   // Timestamp from the CSV file
        string packageId;
        string rfidTag;
        string latitude;
        string longitude;
        string temperatureC;
        string deviceId;            // DeviceID from the CSV
    }

    uint256 public constant MAX_ENTRIES = 100;
    LogisticsRecord[] public logisticsRecords;
    address public owner;

    event LogisticsDataStored(
        uint256 blockchainTimestamp,
        string originalTimestamp,
        string packageId,
        string rfidTag,
        string latitude,
        string longitude,
        string temperatureC,
        string deviceId
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized: Only contract owner can perform this action.");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function storeLogisticsData(
        string memory _originalTimestamp,
        string memory _packageId,
        string memory _rfidTag,
        string memory _latitude,
        string memory _longitude,
        string memory _temperatureC,
        string memory _deviceId
    ) public onlyOwner {
        require(logisticsRecords.length < MAX_ENTRIES, "Storage limit reached: Cannot add more records.");
        
        logisticsRecords.push(LogisticsRecord(
            block.timestamp, // Current blockchain timestamp
            _originalTimestamp,
            _packageId,
            _rfidTag,
            _latitude,
            _longitude,
            _temperatureC,
            _deviceId
        ));
        
        emit LogisticsDataStored(
            block.timestamp,
            _originalTimestamp,
            _packageId,
            _rfidTag,
            _latitude,
            _longitude,
            _temperatureC,
            _deviceId
        );
    }

    function getTotalRecords() public view returns (uint256) {
        return logisticsRecords.length;
    }

    function getLogisticsRecord(uint256 index) public view returns (
        uint256 blockchainTimestamp,
        string memory originalTimestamp,
        string memory packageId,
        string memory rfidTag,
        string memory latitude,
        string memory longitude,
        string memory temperatureC,
        string memory deviceId
    ) {
        require(index < logisticsRecords.length, "Index out of bounds: Invalid record index.");
        LogisticsRecord memory record = logisticsRecords[index];
        return (
            record.blockchainTimestamp,
            record.originalTimestamp,
            record.packageId,
            record.rfidTag,
            record.latitude,
            record.longitude,
            record.temperatureC,
            record.deviceId
        );
    }
}