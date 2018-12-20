/*:
 
 # Interface Segregation Principle
 - - - - - - - - - -
 
 ## Meaning
 - Client should not depend on interface/methods which it is not using
 - Many client-specific interfaces are better than one general-purpose interface
 
 ---
 
 ## How to recognize code smell?
 - One fat interface implemented by many classes where none of these classes implement 100% of interface’s methods. Such fat interface should be split into smaller interfaces suitable for client needs

 
 ---
 
 ## Benefits
 - Highly cohesive code
 - Avoiding coupling between all classes using a single fat interface (once a method in the single fat interface gets updated, all classes -no matter they use this method or not - are forced to update accordingly)
 - Clear separation of business logic by grouping responsibilities into separate interfaces
 
 */
