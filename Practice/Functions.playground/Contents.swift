import UIKit



func greet(person: String) -> String{
    let greetings = "Hello " + person + "!"
    return greetings
}

// call the function

let message = greet(person: "Alice")
print(message)

func greet2(person:String, formally: Bool)->String{
    if formally{
        return "Greetings, " + person
    }else {
        return "Hi, " + person
    }
}
print(greet2(person:"Sneha", formally:true))

func calculateTotal(price:Double, quantity: Int)->Double{
    return price * Double(quantity)
}
let totalPrice = calculateTotal(price: 10.99, quantity: 2)
print(totalPrice)


// mini-ex: Create a function deliveryTime(minutes:) that returns "Ready in x minutes".

func deliveryTime(minutes: Int) -> String {
    return "Ready in \(minutes) minutes"
}
let timeToDeliver = deliveryTime(minutes: 15)
print(timeToDeliver)

// mini-ex: Create a function deliveryTime2(minutes:) that returns "Ready in x minutes". use boolean value

func deliveryTime2(minutes: Int) -> String {
    if minutes <= 10 {
        return "Ready in less than 10 minutes"
    } else {
        return "Ready in \(minutes) minutes"
    }
}
let timeToDeliver2 = deliveryTime2(minutes: 10)
print(timeToDeliver2)


// mini-ex: Create a function deliveryTime3(minutes:) that returns "Ready in x minutes". use boolean value

func deliveryTime3(minutes: Int) -> String {
    let isLessThanTenMinutes = minutes < 10
    return isLessThanTenMinutes ? "Ready in less than 10 minutes" : "Ready in \(minutes) minutes"
}
// mini-ex: Create a function to calculate price + tax and show results.

func totalPrice2(price:Double)->Double {
    let tax = 1.08
    var total = price * tax
    
    return total
}

print(totalPrice2(price:100))
// mini-ex: Create a function to calculate price + tax and show results.







