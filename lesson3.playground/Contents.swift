/*
 Swift Lesson 3 (June 5, 2019)
 */

// class Rocket with 2 "methods"
class Rocket {
    
    // properties "fuel" and "name" of class Rocket (can be accessed by the class' methods)
    var fuel = 100
    var name = ""
    
    func cruise() {
        print("Cruise initiated for \(name)")
    }
    
    func thrust() {
        print("Thrust initiated for \(name)")
    }

}

var rocket:Rocket = Rocket()

rocket.name = "Rocket 1"

rocket.thrust()
rocket.cruise()
print("Fuel level remaining: \(rocket.fuel)%")
