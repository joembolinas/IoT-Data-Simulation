**Logistics Data Storage Contract**

This contract stores logistics-related data on the blockchain. It has a maximum capacity of 100 records, which can be extended as needed.

**Key Features:**

* Stores logistical information (package ID, RFID tag, location coordinates, temperature) in `struct LogisticsRecord`.
* Allows only the owner to add new records.
* Tracks total number of stored records through `getTotalRecords` function.
* Enables retrieval of individual record details via `getLogisticsRecord` function.

**Functions:**

1. **storeLogisticsData**: Adds a new logistics data entry with specified fields (original timestamp, package ID, RFID tag, location coordinates, temperature).
2. **getTotalRecords**: Returns the total number of stored records.
3. **getLogisticsRecord**: Retrieves an individual record's details by index.

**Security:**

* Only owner can add or modify data through `onlyOwner` modifier.
* Data is stored in a fixed-size array (`logisticsRecords`) to prevent excessive memory usage.

This contract provides a basic structure for storing and retrieving logistical information on the blockchain, with built-in security measures.