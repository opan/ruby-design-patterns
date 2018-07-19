## Objectives of Singleton pattern
- We need a single, shared value, of some particular type
- We need to restrict object creation of some type to a single unit along the entire program

## Requirements
- Initial counter will be 0, if no counter exists
- If counter has already been created, return this instance that holds the actual count
- If we call the method `increase`, the count must be incremented by 1
