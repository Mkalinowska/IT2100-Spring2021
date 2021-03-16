import UIKit

//1. Create 3 variables to store the following for currency values: $43.88, $108.99, and $14.22. Use an appropriate type. Output the sum of the 3 values
let a = 43.88, b = 108.99, c = 14.22,
total = ( a + b + c)
print (total)

//2. Create a boolean variable: isNegative. Assign a value. If the boolean value is negative, output “It is less than 0”. If it is greater than or equal to 0, output “It is not a negative”.
var isNegative = 0
if isNegative < 0 {
    print("It is less than 0")
}
if isNegative >= 0{
    print("It is not a negative")
}
//booleans do not have positive or negative values, only true or false

//3. Create an array with string values: Swift, Objective-C, HTML, CSS, and JavaScript. Use a loop to output the values of the array.
let languages = ["Swift", "Objective-C", "HTML", "CSS", "Javascript"]
for language in languages {
    print(language)
}

//4. In a comment, explain what an optional value is.
//An Optional value is the absence of a value. (www.docs.swift.org) From our textbook, it describes it as a chance that a variable may not store a value.

//5. In another comment, explain what nil is in Swift.
//Nil in Swift is what the value of the optional type can be. It is automically set to Nil when someone defines an optional variable without providing a default value. (www.docs.swift.org)

//6. Use the following example. First, prior to the code, define reading1, reading2, and reading3 as optionals. Explain the danger of forcibly unwrapping optionals. How does the following code safeguard this?
var reading1: Float?
var reading2: Float?
var reading3: Float?

if let r1 = reading1,
   let r2 = reading2,
   let r3 = reading3 {
        let avgReading = (r1 + r2 + r3) / 3
        print(avgReading)
    } else {
        let errorString = "Instrument reported a reading that was nil."
        print(errorString)
    }
//The danger of forcibly unwrapping optionals is that the compiler assumes you are sure that the optional will not be nil and should be treated as if it were a normal float. This is bad because you could be potentially incorrect and stop the application if the optional turned out to be nil. The above code safeguards against this by using a conditional if-let statement.

//7. Use Swift’s range type to output numbers 1 through 5.
for output in 1...5 {
    print(output)
}

//8. Use the enumerated() function to output numbers 5 through 10.
let numbers = [5, 6, 7, 8, 9, 10]
for (index, number) in numbers.enumerated() {
    print(index, number)
}

//9. Here is an example of Swift’s string interpolation that creates a greeting from two strings:
//let name = “Steve”
//let greeting = “hello”
//let fullGreeting = “\(greeting), \(name)”
// Use string interpolation to combine a variable storing your name, the string literal “ is mastering “, and a variable containing “ the Swift Programming language”.
let name = "Marta"
let verb = "is mastering"
let noun = "the Swift Programming language"
var fullSentence = "\(name) \(verb) \(noun)"
print(fullSentence)

//Using the currency example from problem 1, output “The total is “ followed by the sum.
print("The total is", total)

//10. Create a function that accepts two Int parameters and returns the product (multiplication) of the parameters. Output the product.
func getProduct(parameterOne: Int, parameterTwo: Int) -> Int {
    return parameterOne * parameterTwo;
}
print(getProduct(parameterOne: 10, parameterTwo: 20))

//11. Create a class called Dog. In the class add properties breed and name and methods bark() and display(). In bark() print “\(name) is barking”. In display() print the name and breed properties. Create an object of type Dog. Assign values to breed and name. Call bark() and display().
class dog {
    func bark(name: String) {
        print("\(name) is barking")
    }
    func display(name: String, breed: String) {
    print("\(name), \(breed)")
     }
 }
let beagle = dog()
beagle.bark(name: "Summer")
beagle.display(name: "Summer", breed: "beagle")
