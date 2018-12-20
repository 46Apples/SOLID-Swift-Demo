/*:
 
 # Dependency Inversion Principle
 - - - - - - - - - -
 
 ## 1. Meaning
 - High-level modules (e.g. business logic) should not depend on low-level modules (e.g. database operations or I/O). Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.
 
 ---
 
 ## 2. How to recognize code smell?
 - Instantiation of low-level modules in high-level ones
 - Calls to class methods of low-level modules/classes
 
 
 ---
 
 ## 3. Benefits
 - Increase reusability of higher-level modules by making them independent of lower-level modules
 - Injected class can be easily mocked in tests
 
 */
