/*
 Swift Lesson 2 (June 4, 2019)
 */

// basic function
func sayHello() {
    print("Hello")
}

//sayHello()

// basic function with parameters (w/ optional Void return value)
func sayHelloTo(_ name:String, _ age:Int) -> Void{
    print("Hello, \(name)")
    print("\(age) years old")
}

// simple function call without underscore placeholders
//sayHelloTo(name:"Abdullah", age:18)

// same function call simplified by omitting parameter labels
sayHelloTo("Abdullah", 18)

// function with return value
func addFiveTo(factor:Int) -> Int {
    return factor + 5
}

let number = 3
// basic type casting and string concatenation
print("\(number) + 5 is " + String(addFiveTo(factor: number)))
