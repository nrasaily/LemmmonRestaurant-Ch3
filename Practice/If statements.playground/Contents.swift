import UIKit
/*
 If: aloows the program to evaluatre multiple conditions
 if condition
 */
let waterTemperature = 92

if waterTemperature >= 100 {
    print("The water is boiling!")
} else {
    print( "The water is not boiling yet." )
}
var position = 2

if position == 1 {
    print( "You are first!" )
} else if position == 2 {
    print( "You are second!" )
} else {
    print( "You did not qualify!" )
}
// example number 3

var temp = 699
if temp >= 68 && temp <= 72 { // two condition
    print("It is a pleasant day!")
} else {
    print("It is not a pleasant day.")
}
var mainPower = false
var batteryPower = true

if mainPower == true || batteryPower == true {
    print("The device is powered on.")
} else {
    print("The device is powered off find a charger.")
}
let age = 10
if age >= 18 && age <= 25 {
    print("You are eligible for Army")
}else if age >= 26 && age <= 65 {
    print("You are eligible for Air Force")
}else {
    print("You are qualifuy for other things")
}
let Age = 14
if age ==  14{
    print("She is sneha ")
};
if age == 11{
    print("James is 11 years old")
};
if age == 4{
    print("twins sister")
}
