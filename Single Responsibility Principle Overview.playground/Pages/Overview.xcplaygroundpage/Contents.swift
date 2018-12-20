/*:
 
# Single Responsibility Principle
- - - - - - - - - -

## Meaning
- Class should have only one responsibility which means class should be highly cohesive and implement strongly related logic. Class implementing feature 1 AND feature 2 AND feature 3 (and so on) violates SRP
 - Class should have only one reason to change

 ---

 ## How to recognize code smell?
- More than one contextually separated piece of code within single class
- Large setup in tests (TDD is very useful when it comes to detecting SRP violation)

 ---

 ## Benefits
- Separated classes responsible for given use case can be now reused in other parts of an application
- Separated classes responsible for given use case can be now tested separately
 
*/
