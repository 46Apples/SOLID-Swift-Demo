/*:
 
 # Open/closed Principle
 - - - - - - - - - -
 
 ## Meaning
 - **Class should be open for extension and closed for modification.** You should be able to extend class’ behavior without the need to modify its implementation (how? Don’t modify existing code of class X but write a new piece of code that will be used by class X)
 
 ---
 
 ## How to recognize code smell?
 - If you notice class X directly references other class Y from within its code base, it’s a sign that class Y should be passed to class X (either through constructor/single method) **e.g. through dependency injection**
- Complex if-else or switch statements
 
 ---
 
 ## Benefits
 - Class’ X functionality can be easily extended with new functionality encapsulated in a separate class without the need to change class’ X implementation (it’s not aware of introduced changes)
 - Code is loosely coupled
 - Injected class Y can be easily mocked in tests
 
 */
