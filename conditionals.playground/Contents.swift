let x = 10

// basic conditional with some comparison operators
if x < 10 {
    print("x is less than 10")
}
else if x == 10 {
    print("x is equal to 10")
}
else {
    print("x is not less than or equal to 10")
}

// nested ternary statement
var result = (x < 10) ? "less than" :  (x == 10) ? "equal to" : "not less than or equal to"

print("x is \(result) 10")
