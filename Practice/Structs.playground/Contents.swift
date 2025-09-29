import UIKit

/*
 Structs
 Custom data type that lets you group related values and behaviours together.
 
 It can contains:
 - Properties (vaiables/constants)
 -Methods
 -Initializers
 -Computed properties
 -Protocols
 
 Syntax
 
 struct StructName {
    var variableName: ElementType
    var variableNmae: ElementType
 }
 */
// Example #1
struct MenuItem {
    var name: String
    var prices: [Double]
    var description: String
    
}

// Example #2
struct Dish {
    var name: String
    var price: Double
    
    func isPremium() -> Bool{
        return price > 10
    }
}

struct Drink {
    var name: String
    var isCold: Bool
    var size: String
    
}

let coffee = Drink(name: "Coffee", isCold: false, size: "Small")
print(coffee)

print(coffee.isCold)

print(coffee.size)

print(coffee.name)


let tea = Drink(name: "Green Tea", isCold: true, size: "Medium")

print(tea)
print(tea.isCold)
print(tea.name)
print(tea.size)

let smoothie = Drink(name: "Strawberry Smoothie", isCold: true, size: "Large")
print(smoothie)
print(smoothie.isCold)
print(smoothie.name)
print(smoothie.size)

let fappe = Drink(name: "Fappuccino", isCold: false, size: "Small")

