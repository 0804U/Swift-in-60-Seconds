// Swift in 60 Seconds
// Chapter 6 - Closures
// https://www.hackingwithswift.com/sixty

import UIKit


// Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()


// Accepting parameters

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")


// Returning values
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


// Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)


// Trailing closure syntax
travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}


// Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


// Using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Shorthand parameter names
travel { place -> String in
    return "I'm going to \(place) in my car"
}

travel { place in
    return "I'm going to \(place) in my car"
}

travel { place in
    "I'm going to \(place) in my car"
}

travel {
    "I'm going to \($0) in my car"
}


// Closures with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}


// Returning closures from functions
func travel() -> (String) ->
    Void {
        return {
            print("I'm going to \($0)")
        }
}

let result = travel()
result("London")

let result2 = travel()("London")


// Capturing values
func travel2() -> (String) ->
    Void {
        var counter = 1
        
        return {
            print("\(counter). I'm going to \($0)")
            counter += 1
        }
}

let result3 = travel2()

result3("London")
result3("London")
result3("London")


