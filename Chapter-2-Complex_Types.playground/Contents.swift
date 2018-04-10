// Swift in 60 Seconds
// Chapter 2 - Complex types
// https://www.hackingwithswift.com/sixty

import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]


// Sets
let colors = Set(["red", "green", "blue"])

// Sets are unordered, can't read from them using numerical position

// If you insert duplicate values into a set, it will be ignored
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

// Arrays vs. sets vs. tuples
// If need specific, fixed collection of related values use a tuple
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// If need collection of unique values, use a set
let set = Set(["aardvark", "astronaut", "azalea"])

// If need collection of values that can contain duplicates, use an array
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// Uses keys and values, can use key to read the associated value
heights["Taylor Swift"]


// Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure


// Enum associated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity2.talking(topic:"football")


// Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth2 = Planet2(rawValue: 3)
