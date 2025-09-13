import UIKit

// variable - var
// constants - let

var greeting = "Hello, playground"
print(greeting)

let day = "Wednersday"
print("Taday is \(day)") // string interpolation

let dailyTemperature = 75
print("Today is \(day) and the temperature is \(dailyTemperature) degrees")

var temperature = 80
print("The temperature in the morning is: \(temperature)")
temperature = 85
print("The temperature in the afternoon is \(temperature)")

// ---Game Dcore ---
print("---- Game Score ----")
let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The game score is: \(gameScore)")

gameScore += levelScore
print("Current Score: \(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20

print("The level bonus score is: \(levelBonusScore)")
gameScore += Int(levelScore)
print("The game final score is \(gameScore)")

// Mini-challange
/* Create a swift challange that declares three variables to store your name, age and city.
than use print() and string interpolation to display a sentence instroducing you
 */
var name = "Nar Re"
var age = 30
var city = "Rochester"
print("My name is \(name) I am \(age) years old, and I am from \(city)")

// ----- Swift DataTypes -----
let disName: String = "Pasta" // String is valuetype
var price:Double = 9.99
var inStock:Bool = true // true-false
let qty:Int = 3

