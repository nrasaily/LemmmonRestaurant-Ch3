import UIKit

// ARRAY

let dishes = ["pizza", "pasta", "burger", "salad"]

print(dishes[1]) // output: Pasta

// Example 2
var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders.count)

let desserts = ["Ice cream", "Cake", "Cheesecake", "Pie"]
    print(desserts[2])

// dictionary
let menuPrices: [String:Double] = ["Pizza": 12.99, "Salad": 15.00, "Burger": 10.00]
print(menuPrices["Pizza"]!)

var stock: [String:Double] = ["Burger":5.00, "Soup":4.00]
stock["Soup"] = 4.5
print(stock)
// Challenge
var drinks: [String:Double] = ["Coke": 12.99, "Pepsi": 10.99, "Sprite": 8.99]

print(drinks["Pepsi"]!)

var ingredients = ["Tomato":3, "Onion":2, "Cheese":1, "Bread":1]
 for(item,_) in ingredients {
     print(item)
}
for (_,qty) in ingredients {
    print(qty)
}
//for in loop
for(item,qty) in ingredients.sorted(by: {$0.key < $1.key}) {
    print("\(item): \(qty)")
}

// we will use the array on the line 4

for dish in dishes {
    print("\(dish)")
}

//Challege3: Travel th dictionary
let meals = ["Burger": 7.99, "Salad": 5.99, "Pasta": 12.99]

for (meal, price) in meals {
    print("The price of the \(meal) is $\(price)")
}

// Challege 4: Travel the array

let prices2 = [12.99, 10.99, 8.99]
for price in prices2 {
    print("\(price)")
}

// Filtering

// wew will use the price2

let premium = prices2.filter { $0 > 10 }
print(premium)

let menu3 = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"] //
let veggie  = menu3.filter { $0.contains("Veggie") || $0.contains("fruits")}
print(veggie)

