import UIKit

/*
    Swift Lesson 1 (June 3, 2019)
 */

var str = "hello"
str = "updated text"

let word = "hello" // let is constant

// explicit types
var string:String = "string"

var b:Bool = true

var int:Int = 0
int = -1
int = 1234

var float = 3.14
float = 10.5
float = -0.5

var double:Double = 3.14

// Addition
var a = 20 + 5
// Subtraction
var s = 20 - 5
// Multiplication
var m = 20 * 5
// Division
var d = 20 / 5
// Modulus
var e = 20 % 2

// Equations with variables
var f = (a * s) + (m / d)

f /= 10

print(f)

// Absolute number w/ ternary
var g:Bool = abs(-1) == 1 ? true : false
// Ceiling
var h:Double = ceil(1.8)
// Floor
var i:Int = Int(floor(1.4))
// Square Root
var j = sqrt(36)
// Power
var k = pow(2, 4)

print(g)
