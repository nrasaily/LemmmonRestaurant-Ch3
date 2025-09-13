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
