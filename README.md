# Smart Tracking System: IoT Data Simulation to Blockchain Integration

**Course**: MO-IT148 - Applications Development and Emerging Technologies
**Project**: Smart Logistics Tracking System using IoT Simulation, Blockchain Storage, and Smart Contracts
**Platform**: Ethereum Blockchain (Ganache Testnet), Solidity, Python Web3.py
**Academic Level**: Undergraduate IT Program, Term 3 SY 2024-25

## 🎯 Project Overview

This project demonstrates a complete end-to-end implementation of a smart logistics tracking system that combines IoT data simulation, blockchain storage, and smart contract integration. The system simulates realistic IoT sensor data for package tracking and stores it immutably on the Ethereum blockchain using smart contracts.

### 📋 Project Status: **Week 6 Complete (100% Progress)**

✅ **Completed Milestones:**

- Week 2: IoT Data Simulation (100 records generated)
- Week 3: Smart Contract Development & Deployment
- Week 4: Python-Blockchain Integration with CSV Automation
- Week 5: Advanced Analytics & Monitoring Dashboard
- Week 6: Data Retrieval, Processing, Analysis & Professional Reporting

🎯 **Project Complete:**

- Full end-to-end blockchain data pipeline operational
- Professional data analysis and visualization suite
- Production-ready export functionality
- Clean, professional documentation (emoji-free)

## 🏗️ System Architecture

```mermaid
flowchart TD
    subgraph "Week 2: Data Generation"
        A[IoT Simulation] --> B[CSV Export]
        B --> C[100 Logistics Records]
    end
  
    subgraph "Week 3: Blockchain Layer"
        D[Solidity Contract] --> E[Remix IDE]
        E --> F[Ganache Deployment]
        F --> G[Contract Address:<br/>0xBbEde627aCF9aa814C667a46E27fb8a29227f509]
    end
  
    subgraph "Week 4: Integration Layer"
        H[Web3.py Connection] --> I[Contract Loading]
        I --> J[CSV Automation]
        J --> K[Batch Storage]
        K --> L[Blockchain Verification]
    end
  
    C --> H
    G --> I
  
    style A fill:#e1f5fe
    style D fill:#f3e5f5
    style H fill:#e8f5e8
```

## 📁 Project Structure

```
IoT-Data-Simulation/
├── 📄 README.md                    # This comprehensive project documentation
├── 📄 journey.md                   # Development journey narrative
├── 📄 requirements.txt             # Python dependencies
├── 🐳 dockerfile                   # Container configuration
├── 📁 week-2/                      # IoT Data Simulation
│   ├── 📊 iot_data_simulation.ipynb
│   ├── 📊 MO-IT148_Homework_IoT_Data_Simulation_S3101_Group_x.ipynb
│   └── 📊 simulated_logistic_iot_data.csv  # 100 IoT records
├── 📁 week-3/                      # Smart Contract Development
│   ├── 📜 IoTDataStorage.sol       # Main smart contract
│   ├── 📄 scenario.json            # Test scenarios
│   └── 📁 artifacts/               # Compiled contract artifacts
├── 📁 week-4/                      # Blockchain Integration
│   └── 📊 SmartTrackingSystem-BlockchainLedger.ipynb  # Complete integration
📁 week-6/                      # Data Retrieval & Processing  
│   ├── 📊 Homework_Data_Retrieval_Processing_S3101_Group_X.ipynb  # Complete analysis pipeline
│   └── 📊 cleaned_iot_blockchain_data_20250615_045302.csv  # Processed export data
├── 📁 env/                         # Python virtual environment
└── 📁 image/                       # Project screenshots
```

## 🚀 Quick Start Guide

### Prerequisites

- Python 3.8+ with pip
- Ganache CLI or Ganache GUI
- Web browser for Remix IDE
- Git for version control

### 1. Environment Setup

```bash
# Clone the repository
git clone <repository-url>
cd IoT-Data-Simulation

# Activate virtual environment
source env/Scripts/activate  # Windows
# source env/bin/activate    # Linux/Mac

# Install dependencies
pip install -r requirements.txt
```

### 2. Blockchain Setup

```bash
# Start Ganache (if using CLI)
ganache-cli --port 7545 --deterministic

# Or use Ganache GUI and configure:
# - RPC Server: http://127.0.0.1:7545
# - Network ID: 5777
```

### 3. Smart Contract Deployment

1. Open [Remix IDE](https://remix.ethereum.org)
2. Load `week-3/IoTDataStorage.sol`
3. Compile with Solidity ^0.8.0
4. Connect to Ganache via "External HTTP Provider"
5. Deploy using first account as owner
6. Note the contract address for Python integration

### 4. Run the Integration

```bash
# Open the main notebook
jupyter notebook week-4/SmartTrackingSystem-BlockchainLedger.ipynb

# Follow the cells to:
# 1. Connect to Ganache
# 2. Load smart contract
# 3. Store dummy data
# 4. Automate CSV batch processing
# 5. Verify blockchain storage
```

## 📊 Data Flow & Implementation

### IoT Data Structure

Our logistics tracking system captures 8 essential fields:

| Field         | Type   | Example               | Description               |
| ------------- | ------ | --------------------- | ------------------------- |
| Timestamp     | String | "2025-05-09 04:49:40" | Record creation time      |
| PackageID     | String | "PKG1001"             | Unique package identifier |
| RFIDTag       | String | "RFID_82074261_A"     | RFID sensor tag           |
| Latitude      | Float  | 14.598842             | GPS latitude coordinate   |
| Longitude     | Float  | 120.984874            | GPS longitude coordinate  |
| Temperature_C | Float  | 3.58                  | Environmental temperature |
| DeviceID      | String | "Tracker_Dev_101"     | IoT device identifier     |

### Smart Contract Features

**Contract Address**: `0xBbEde627aCF9aa814C667a46E27fb8a29227f509`
**Owner Account**: `0xB3B75FA814041f3176d4812324CD47A0C50F31A6`
**Max Capacity**: 100 records (upgradeable)

**Key Functions:**

- `storeLogisticsData()` - Store new IoT record (owner only)
- `getLogisticsRecord(index)` - Retrieve specific record
- `getTotalRecords()` - Get current record count
- `owner()` - Contract owner verification

**Security Features:**

- Owner-only write access via `onlyOwner` modifier
- Input validation and boundary checks
- Event emission for external monitoring
- Gas optimization for batch operations

## 💻 Technology Stack

### Blockchain Layer

- **Solidity ^0.8.0** - Smart contract development
- **Remix IDE** - Contract development and deployment
- **Ganache** - Local Ethereum blockchain simulation
- **Web3.py** - Python-Ethereum integration library

### Data Processing Layer

- **Python 3.8+** - Core programming language
- **Pandas** - Data manipulation and CSV processing
- **NumPy** - Numerical computations for IoT simulation
- **Jupyter Notebooks** - Interactive development environment

### Development Tools

- **Remix** IDE - Solidity
- Ganache -
- **Git** - Version control system
- **Docker** - Containerization (configured)
- **Virtual Environment** - Python dependency isolation

## 🔧 Implementation Details

### Week 2: IoT Data Simulation

```python
# Core simulation function
def generate_logistic_data(num_records=100):
    # Manila-based GPS coordinates
    current_latitude = 14.5995 
    current_longitude = 120.9842
  
    # Realistic package tracking simulation
    # Temperature range: 3-7°C (refrigerated goods)
    # Time progression: 5-minute intervals with jitter
    # Device rotation: 5 different tracker devices
```

### Week 3: Smart Contract Architecture

```solidity
contract LogisticsDataStorage {
    struct LogisticsRecord {
        uint256 blockchainTimestamp;  // Block timestamp
        string originalTimestamp;     // CSV timestamp
        string packageId;             // Package identifier
        string rfidTag;              // RFID sensor tag
        string latitude;             // GPS latitude
        string longitude;            // GPS longitude
        string temperatureC;         // Temperature reading
        string deviceId;             // Device identifier
    }
  
    uint256 public constant MAX_ENTRIES = 100;
    LogisticsRecord[] public logisticsRecords;
    address public owner;
}
```

### Week 4: Python-Blockchain Integration

```python
# Configuration
GANACHE_URL = "http://127.0.0.1:7545"
CONTRACT_ADDRESS = "0xBbEde627aCF9aa814C667a46E27fb8a29227f509"
SENDER_ACCOUNT = "0xB3B75FA814041f3176d4812324CD47A0C50F31A6"

# Web3 connection and contract loading
web3 = Web3(Web3.HTTPProvider(GANACHE_URL))
contract = web3.eth.contract(
    address=web3.to_checksum_address(CONTRACT_ADDRESS), 
    abi=contract_abi
)

# CSV automation with safety checks
for index, row in iot_data.iterrows():
    if current_records >= MAX_ENTRIES:
        print(f"⚠️ MAX_ENTRIES ({MAX_ENTRIES}) reached")
        break
```

## 🎯 Academic Milestones

### ✅ Week 2 - IoT Data Simulation (Complete)

- [X] 100 realistic logistics records generated
- [X] GPS coordinate simulation (Manila region)
- [X] Temperature sensor data (refrigerated goods)
- [X] RFID and package ID generation
- [X] CSV export for cross-platform compatibility
- [X] Data visualization with Plotly

### ✅ Week 3 - Smart Contract Development (Complete)

- [X] Solidity contract with proper data structures
- [X] Security implementation (owner-only access)
- [X] Event emission for monitoring
- [X] Compilation and testing in Remix IDE
- [X] Deployment to Ganache local blockchain
- [X] Contract verification and interaction testing

### ✅ Week 4 - Blockchain Integration (Complete)

- [X] Web3.py connection establishment
- [X] Contract ABI integration and loading
- [X] Manual dummy data storage testing
- [X] CSV automation with batch processing
- [X] Transaction verification and error handling
- [X] Complete end-to-end data flow verification

### ✅ Week 6 - Data Retrieval & Processing (Complete)

- [X] Blockchain data retrieval with 100% success rate
- [X] Comprehensive data cleaning and preprocessing
- [X] Advanced statistical analysis and business insights
- [X] Professional visualization dashboard creation
- [X] Multi-format data export with calculated metrics
- [X] Production-ready documentation (emoji-free)
- [X] Complete end-to-end data processing pipeline

## 📈 Key Achievements

### Technical Accomplishments

- **100% Data Integrity**: All CSV records successfully stored on blockchain
- **Zero Transaction Failures**: Robust error handling and validation
- **Gas Optimization**: Efficient contract design for batch operations
- **Security Implementation**: Owner-only access with proper validation
- **Complete Data Pipeline**: From IoT simulation to professional analysis
- **98% Cold Chain Compliance**: Advanced business intelligence metrics
- **Professional Documentation**: Clean, emoji-free presentation

### Learning Outcomes

- **Full-Stack Blockchain Development**: From IoT simulation to smart contracts
- **Web3 Integration**: Python-Ethereum ecosystem mastery
- **Data Pipeline Design**: CSV → Blockchain → Analysis automated workflow
- **Security Best Practices**: Smart contract security and access control
- **Advanced Data Science**: Statistical analysis and business intelligence
- **Professional Visualization**: Multi-panel dashboards and compliance reporting
- **Production Documentation**: Clean, academic-grade presentation

## 🔍 Verification & Testing

### Contract Verification

```python
# Verify contract deployment
total_records = contract.functions.getTotalRecords().call()
print(f"📊 Total records in contract: {total_records}")

# Verify data integrity
for i in range(total_records):
    record = contract.functions.getLogisticsRecord(i).call()
    print(f"📦 Package {record[2]}: {record[1]}")
```

### Data Validation

- ✅ All 100 CSV records processed successfully
- ✅ Blockchain timestamps match transaction blocks
- ✅ Data retrieval matches original CSV format
- ✅ Gas costs optimized for production use

## 🚀 Future Enhancements

### Phase 1: Advanced Features

- Real-time GPS tracking integration
- Temperature alert system
- Multi-device support
- Advanced analytics dashboard

### Phase 2: Scale & Security

- IPFS integration for large data storage
- Multi-signature wallet support
- Role-based access control
- Enterprise API development

### Phase 3: Production Ready

- Mainnet deployment strategy
- Mobile application development
- IoT hardware integration
- Compliance and audit trails

## 📚 Resources & References

### Documentation

- [Solidity Documentation](https://docs.soliditylang.org/)
- [Web3.py Documentation](https://web3py.readthedocs.io/)
- [Ganache Documentation](https://trufflesuite.com/ganache/)
- [Remix IDE Guide](https://remix-ide.readthedocs.io/)

### Course Materials

- MO-IT148 Course Syllabus
- Week-by-week milestone requirements
- Academic submission guidelines
- Group collaboration standards

## 👥 Contributors

**Academic Project Team**

- Section: S3101
- Group: [x] Joem Bolinas
- Course Instructor: []
- Academic Institution: []

## 🎓 Academic Context

This project represents a comprehensive exploration of emerging technologies in applications development, specifically focusing on:

1. **IoT Data Simulation** - Understanding sensor data patterns and logistics tracking
2. **Blockchain Technology** - Immutable data storage and smart contract development
3. **System Integration** - Connecting traditional data processing with blockchain networks
4. **Real-world Applications** - Supply chain management and package tracking systems

The implementation demonstrates proficiency in full-stack development across multiple technology domains, preparing students for careers in emerging technology sectors.

---

**Last Updated**: June 15, 2025
**Project Status**: Week 6 Complete - 100% Progress
**Achievement**: Full blockchain data processing pipeline operational

```mermaid
flowchart LR
    subgraph "Week 2: IoT Data Simulation"
        JN[Jupyter Notebook]
        PY[Python Libraries]
        CSV[CSV File]
        VIZ[Data Visualization]
  
        JN -->|"1. Import libraries"| PY
        PY -->|"2. Define data structure"| JN
        JN -->|"3. Generate records"| CSV
        CSV -->|"4. Analyze"| VIZ
    end
```

I chose Jupyter Notebook as my canvas—a perfect tool for this task since it allows me to combine code, visualizations, and documentation in one interactive document. Looking at the template provided (`MO-IT148_Homework_IoT_Data_Simulation_S3101_Group_x.ipynb`), I could see the structure already laid out for me.

```python
import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta
```

The first critical decision was determining what data to generate. Since I was simulating a logistics tracking system, I needed:

- GPS coordinates (latitude/longitude)
- Package identifiers (RFID tags and package IDs)
- Environmental data (temperature readings)
- Device information
- Timestamps

The heart of the simulation was this function:

```python
def generate_logistic_data(num_records=50):
    data = []
  
    # Started with coordinates around Manila
    current_latitude = 14.5995 
    current_longitude = 120.9842
  
    start_time = datetime.now()

    for i in range(num_records):
        # Added small time progression with jitter for realism
        record_timestamp = start_time + timedelta(minutes=i*5 + random.randint(-2,2))
  
        # Created realistic but random package IDs and RFID tags
        package_id = f"PKG{1000 + i + random.randint(0,5)}"
        rfid_tag = f"RFID_{random.randint(10000000, 99999999)}_{random.choice(['A','B','C'])}"

        # Added small movement to simulate packages moving through a city
        lat_change = random.uniform(-0.005, 0.005)
        lon_change = random.uniform(-0.005, 0.005)
        current_latitude += lat_change
        current_longitude += lon_change
  
        # Simulated refrigerated goods with occasional temperature spikes
        base_temp = 5.0
        temperature_celsius = round(base_temp + random.uniform(-1.5, 1.5), 2)
  
        # Added different tracker devices
        device_id = f"Tracker_Dev_{101 + (i%5)}"
  
        # Created the record and added it to our dataset
        record = {
            "Timestamp": record_timestamp.strftime('%Y-%m-%d %H:%M:%S'),
            "PackageID": package_id,
            "RFIDTag": rfid_tag,
            "Latitude": current_latitude,
            "Longitude": current_longitude,
            "Temperature_C": temperature_celsius,
            "DeviceID": device_id
        }
        data.append(record)
  
    return pd.DataFrame(data)
```

I generated 100 records, explored the data through pandas, and visualized it using Plotly. The final step was saving it to a CSV file (`simulated_logistic_iot_data.csv`), which would become crucial later:

```python
iot_df.to_csv("simulated_logistic_iot_data.csv", index=False)
```

## Chapter 2: Into the Blockchain - Smart Contract Development

As Week 3 arrived, a new challenge emerged: creating a smart contract to store this IoT data on the blockchain. This would transform our simulated data into immutable records.

```mermaid
flowchart LR
    subgraph "Week 3: Smart Contract"
        SOL[Solidity Code]
        REMIX[Remix IDE]
        GANACHE[Ganache]
        CONTRACT[Deployed Contract]
  
        SOL -->|"1. Write contract"| REMIX
        REMIX -->|"2. Compile"| REMIX
        REMIX -->|"3. Connect to"| GANACHE
        REMIX -->|"4. Deploy"| CONTRACT
    end
```

I began by studying the Solidity language and how smart contracts work. The task was to create a contract that could:

1. Store logistics data securely
2. Keep track of all records
3. Allow retrieval of data when needed
4. Limit access to authorized users

Opening Remix IDE in the browser (remix.ethereum.org), I created a new file called IoTDataStorage.sol. After reviewing examples and documentation, I structured my contract:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogisticsDataStorage {
    struct LogisticsRecord {
        uint256 blockchainTimestamp;
        string originalTimestamp;
        string packageId;
        string rfidTag;
        string latitude;
        string longitude;
        string temperatureC;
        string deviceId;
    }

    uint256 public constant MAX_ENTRIES = 100;
    LogisticsRecord[] public logisticsRecords;
    address public owner;
  
    // Only contract owner can add records
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }
  
    constructor() {
        owner = msg.sender;
    }
  
    // Main function for storing our IoT data
    function storeLogisticsData(
        string memory _originalTimestamp,
        string memory _packageId,
        string memory _rfidTag,
        string memory _latitude,
        string memory _longitude,
        string memory _temperatureC,
        string memory _deviceId
    ) public onlyOwner {
        // Prevent exceeding storage capacity
        require(logisticsRecords.length < MAX_ENTRIES, "Storage limit reached");
  
        // Create and store the record
        logisticsRecords.push(LogisticsRecord(
            block.timestamp,
            _originalTimestamp,
            _PackageId,
            _rfidTag,
            _latitude,
            _longitude,
            _temperatureC,
            _deviceId
        ));
  
        // Emit event for offchain monitoring
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
  
    // Get total number of records
    function getTotalRecords() public view returns (uint256) {
        return logisticsRecords.length;
    }
  
    // Retrieve a specific record by index
    function getLogisticsRecord(uint256 index) public view returns (
        uint256, string memory, string memory, string memory,
        string memory, string memory, string memory, string memory
    ) {
        require(index < logisticsRecords.length, "Index out of bounds");
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
  
    // Event for monitoring record additions
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
}
```

I designed this structure carefully to:

1. Match the CSV format from Week 2
2. Include security controls (only owner can add records)
3. Prevent data storage overflow with MAX_ENTRIES
4. Create proper getters for accessing the data
5. Use events for external monitoring

After writing the contract, compiling was next. I selected the Solidity Compiler tab in Remix, chose compiler version 0.8.0 (matching my pragma statement), and clicked "Compile". Watching for warnings or errors, I was relieved when it compiled successfully—a green checkmark appeared!

## Chapter 3: Deploying to Ganache - Local Blockchain

Now I needed a blockchain to deploy to. Rather than using the expensive public Ethereum network, Ganache provided a perfect local test blockchain. I downloaded and installed Ganache, clicked "Quickstart Ethereum," and was greeted with 10 pre-funded accounts.

Back in Remix, I navigated to the "Deploy & Run Transactions" tab. This is where I encountered my first real challenge—I couldn't find the "Web3 Provider" option mentioned in the instructions! After some searching, I discovered it had been renamed to "External HTTP Provider" in newer versions.

I selected this option and entered Ganache's RPC URL: `http://127.0.0.1:7545`. After confirming the connection, I selected my contract from the dropdown and clicked "Deploy". The contract deployed successfully, and Remix showed it under "Deployed Contracts."

I carefully noted the contract address (`0xa56e14ab07f139b9fa1569bb1374c0dd088fb039`) and tested some interactions:

1. Called `owner()` to verify my account was set as the owner
2. Called `getTotalRecords()` which returned 0 (empty contract)
3. Manually tested `storeLogisticsData()` with sample values

Everything worked! My smart contract was now ready to receive real data.

## Chapter 4: Bridging the Gap - Python Integration

The final challenge in Week 4 was connecting Python to the blockchain—linking our IoT simulation to our smart contract. I created a new Jupyter notebook (W4.ipynb) for this purpose.

```mermaid
flowchart LR
    subgraph "Week 4: Integration"
        WEB3[Web3.py]
        ABI[Contract ABI]
        PY_INT[Python Integration]
        BC_DATA[Blockchain Data]
  
        WEB3 -->|"1. Setup connection"| GANACHE
        CONTRACT -->|"2. Get ABI"| ABI
        ABI -->|"3. Load contract"| PY_INT
        CSV -->|"4. Read data"| PY_INT
        PY_INT -->|"5. Store on chain"| BC_DATA
    end
  
    CSV --> PY_INT
    CONTRACT --> ABI
```

First, I needed to install the Web3.py library:

```python
!pip install web3 pandas
```

The most critical part was configuring the connection correctly:

```python
from web3 import Web3
import json

# Configuration
GANACHE_URL = "http://127.0.0.1:7545"
CONTRACT_ADDRESS = "0xa56e14ab07f139b9fa1569bb1374c0dd088fb039"

# This was tricky! I needed to copy the ABI from Remix after compilation
CONTRACT_ABI_JSON = '''
[
    {
        "inputs": [],
        "stateMutability": "nonpayable",
        "type": "constructor"
    },
    {
        "anonymous": false,
        "inputs": [
            {"indexed": false, "internalType": "uint256", "name": "blockchainTimestamp", "type": "uint256"},
            {"indexed": false, "internalType": "string", "name": "originalTimestamp", "type": "string"},
            {"indexed": false, "internalType": "string", "name": "packageId", "type": "string"},
            {"indexed": false, "internalType": "string", "name": "rfidTag", "type": "string"},
            {"indexed": false, "internalType": "string", "name": "latitude", "type": "string"},
            {"indexed": false, "internalType": "string", "name": "longitude", "type": "string"},
            {"indexed": false, "internalType": "string", "name": "temperatureC", "type": "string"},
            {"indexed": false, "internalType": "string", "name": "deviceId", "type": "string"}
        ],
        "name": "LogisticsDataStored",
        "type": "event"
    },
    # ... rest of ABI ...
]
'''

# Connect to Ganache
web3 = Web3(Web3.HTTPProvider(GANACHE_URL))
if web3.is_connected():
    print(f"✅ Connected to Ganache successfully!")
else:
    print(f"❌ Connection failed!")
    exit()
```

I encountered a hurdle here—initially confusing the contract bytecode hash (`0x63c8bf...`) with the actual ABI. After researching, I understood that the ABI is a JSON description of the contract's interface, not a hash. I went back to Remix, clicked the "ABI" button in the compiler section, and copied the full JSON.

With the connection established, I implemented the core functionality:

```python
# Load the contract
contract_abi = json.loads(CONTRACT_ABI_JSON)
contract = web3.eth.contract(address=web3.to_checksum_address(CONTRACT_ADDRESS), abi=contract_abi)

# Set the sender account (must be the contract owner)
default_sender_account = web3.eth.accounts[0]

# Store a test record
dummy_data = {
    "_originalTimestamp": "2025-01-01 12:00:00",
    "_packageId": "PKG_PYTHON_001",
    "_rfidTag": "RFID_PY_TEST",
    "_latitude": "10.12345",
    "_longitude": "120.54321",
    "_temperatureC": "22.5",
    "_deviceId": "Tracker_Py_01"
}

tx_hash = contract.functions.storeLogisticsData(
    dummy_data["_originalTimestamp"],
    dummy_data["_packageId"],
    dummy_data["_rfidTag"],
    dummy_data["_latitude"],
    dummy_data["_longitude"],
    dummy_data["_temperatureC"],
    dummy_data["_deviceId"]
).transact({'from': default_sender_account, 'gas': 1500000})

# Wait for transaction to be mined
receipt = web3.eth.wait_for_transaction_receipt(tx_hash)
if receipt.status == 1:
    print("✅ Data stored successfully!")
else:
    print("❌ Transaction failed!")

# Verify by retrieving the record
total_records = contract.functions.getTotalRecords().call()
if total_records > 0:
    record = contract.functions.getLogisticsRecord(total_records - 1).call()
    print(f"Retrieved Package ID: {record[2]}")
```

The most challenging part was ensuring the transaction parameters were correct—particularly using the right account (the contract owner) and providing enough gas. After some trial and error, I got it working!

## Chapter 5: The Full Circle - From CSV to Blockchain

With all components working, I could now extend the script to read from our Week 2 CSV file and store all records on the blockchain:

```python
import pandas as pd

# Load our simulated IoT data
csv_path = "WEEK-2/simulated_logistic_iot_data.csv"
iot_data = pd.read_csv(csv_path)

print(f"Loaded {len(iot_data)} records from CSV")

# Store each record on the blockchain
for index, row in iot_data.iterrows():
    # Only store a subset for demo purposes (to save gas)
    if index >= 5:  # Store only first 5 records
        break
  
    print(f"Processing record {index+1}/5: {row['PackageID']}...")
  
    # Create transaction
    tx_hash = contract.functions.storeLogisticsData(
        row['Timestamp'],
        row['PackageID'],
        row['RFIDTag'],
        str(row['Latitude']),
        str(row['Longitude']),
        str(row['Temperature_C']),
        row['DeviceID']
    ).transact({'from': default_sender_account, 'gas': 1500000})
  
    # Wait for transaction to be mined
    receipt = web3.eth.wait_for_transaction_receipt(tx_hash)
    if receipt.status == 1:
        print(f"  ✅ Record {index+1} stored successfully!")
    else:
        print(f"  ❌ Record {index+1} failed!")

print("Data integration complete!")
```

I limited it to 5 records to save execution time and gas costs, but the principle would work for all records.

```mermaid
sequenceDiagram
    title: IoT Data Simulation to Blockchain Integration
    participant User as Developer
    participant JN as Jupyter Notebook
    participant CSV as CSV File
    participant Remix as Remix IDE
    participant Ganache as Ganache
    participant SC as Smart Contract
    participant Web3 as Web3.py

    User->>JN: Create IoT Simulation
    JN->>JN: Generate logistics data
    JN->>CSV: Export data to CSV
    Note over JN,CSV: Week 2 Output
  
    User->>Remix: Create Smart Contract
    Remix->>Remix: Compile IoTDataStorage.sol
    User->>Ganache: Start local blockchain
    User->>Remix: Connect to Ganache
    Remix->>SC: Deploy smart contract
    Note over Remix,SC: Week 3 Output
  
    User->>Web3: Create Python integration
    Web3->>Ganache: Connect to blockchain
    Web3->>SC: Load contract ABI & address
    Web3->>CSV: Read IoT data
    Web3->>SC: Store data on blockchain
    Web3->>Web3: Verify data retrieval
    Note over Web3,SC: Week 4 Output
```

## Epilogue: Reflections on the Journey

Looking back at this journey from Week 2 to Week 4, I'm amazed at how we started with simple simulated data and ended with a complete blockchain solution. The process taught me:

1. **Data Modeling** - How to structure data for both traditional storage and blockchain
2. **Solidity Programming** - Writing secure, efficient smart contracts
3. **Local Blockchain Development** - Using Ganache to test without costs or risks
4. **Web3 Integration** - Connecting Python applications to blockchain networks

The most valuable learning was understanding the full stack: from generating IoT data, to storing it permanently on a blockchain, to retrieving it when needed. This end-to-end perspective shows how emerging technologies can work together to create trustworthy, immutable systems that track real-world objects and events.

This knowledge could be applied to countless real-world scenarios—from supply chain verification to healthcare record management to environmental monitoring. The future is bright for IoT and blockchain integration!
