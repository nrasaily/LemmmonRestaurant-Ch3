import UIKit

// Arrays

//Syntax and example

let dishes: [String] = ["Pizza", "Pasta", "Salad"]

print(dishes[1])// output: Pasta
print(dishes.count) // 3

// Example 2
var prices = [9.99, 10.50, 6.00]
let totalPrice = prices[0] + prices[1] + prices[2]
print("Total price for three dishes: \(totalPrice)")

for price in prices {
    print("Price: \(price)")
}

var desserts = ["Cake", "Ice cream", "Cookie"]
for dessert in desserts {
    print(dessert)
}

// Example 3
let calories: [Int] = [50, 300, 400, 250]
for calorie in calories {
    if calorie >= 100 {
        print("Calories: \(calorie) higher calorie than 100")
    }
}

// milli challnge 3 print the prices greater than 10.00

let prices2: [Double] = [8.50, 12.50, 14.50, 10.00, 9.00]
for price in prices2 {
    if price >=  10.00 {
        print("Premium price: \(price)")
    }
}

// Example meals
let meal = ["salad", "pasta", "pizza", "burger"]
for meal in meal {
    if meal.contains("p"){
        print("Excellant choice for lunch and p:\(meal)")
    }
}

// min-ex-4: Filter and print only menu items that cost less than $ 10

let mealPrices: [Double] = [8.50, 12.50, 14.50, 10.00, 9.00]

for price in mealPrices {
    if price < 10.00 {
        print("Affordable meal: \(price)")
    }
}

var counter = 0
var totalPremium = 0
for price in mealPrices {
    if price >=  10.00 {
        counter += 1
        totalPremium += Int(price)
    }
}
print("You earn $\(totalPremium) with the premium meals and you ordered \(counter) premium meals")


