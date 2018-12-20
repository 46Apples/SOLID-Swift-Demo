/*:
 
 # Liskov Substitution Principle
 - - - - - - - - - -
 
 ## Meaning
 - Extension of open/closed principle stating that new derived classes extending the base class should not change the behavior of the base class (behavior of inherited methods). Provided that if a class Y is a subclass of class X any instance referencing class X should be able to reference class Y as well (derived types must be completely substitutable for their base types.)
 - Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program
 
 ---
 
 ## How to recognize code smell?
 - If it looks like a duck, quacks like a duck but needs batteries for that purpose - it’s probably a violation of LSP
 - Modification of inherited behavior in subclass
 - Exceptions raised in overridden inherited methods
 
 ---
 
 ## Benefits
 - Avoiding unexpected and incorrect results
 - Clear distinction between shared inherited interface and extended functionality
 
 */
