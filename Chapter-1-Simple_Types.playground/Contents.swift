// Swift in 60 Seconds
// Chapter 1 - Simple Types
// https://www.hackingwithswift.com/sixty

import UIKit

var str = "Hello, playground"

str = "Goodbye"

var age = 38

// Swift lets you use underscores as thousands separators, which makes it easier to read
var population = 8_000_000

//Multi-line strings
var str1 = """
This goes
over multiple
lines
"""

// If you only want to use multi-line strings to format code
// but don't want the line breaks end each line with a \
var str2 = """
This goes \
over multiple \
lines
"""

// Doubles and booleans
var pi = 3.14

var awesome = true

// String interpolation
var score = 85
var str3 = "Your score was \(score)"

var results = "The test results are here: \(str3)"

// Contants
let taylor = "swift"

// Type annotations
let str4 = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

