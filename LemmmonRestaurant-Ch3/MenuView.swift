//
//  MenuView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/17/25.
//

import SwiftUI

struct MenuView: View {
    // create a dictionary dish: price (6 items)
    
    /*let menuItems = ["Pizza":9.99,
     "Salads":10.50,
     "Pasta":16.50,
     "Desserts":6.00,
     "Drinks":4.75,
     "Steak":14.99]
     */
    
    let menuItems: [MenuItem] = [
        MenuItem(name: "Pizza", description: "Cheesy and hot", price: 9.99),
        MenuItem(name: "Salads", description: "Fresh and healthy", price: 15.50),
        MenuItem(name: "Pasta", description: "Spregetti", price: 6.0),
        MenuItem(name: "Tacos", description: "Spicy and tasty", price: 10.0),
        MenuItem(name: "Lasagna", description: "Juiicy", price: 14.99),
        MenuItem(name: "Ramen", description: "Hot and tasty", price: 12.99),
        MenuItem(name: "Pancakes", description: "Fluffy and delicious", price: 7.99),
        MenuItem(name: "Ice Cream", description: "Cold and creamy", price: 10.99),
    ]
    @State private var showDesserts = false
    @State private var showPremium = false
    // @State variable means "SwiftUI please store and watch this value. if it change, rebuilt the UI"
    
    // Computed properties
    // does not store value
    // each access recomputes the value
    
    // syntax
    /*
     var propertyName: Type{
        return a calculated value
     }
     */
    var sortedMenu: [MenuItem] {
        return menuItems.sorted { $0.name < $1.name}
    }
    var filteredMenu: [MenuItem]{
        showPremium ? menuItems.filter{$0.price > 10} :
        menuItems
    }
    var averagePrice: Double {
        let total = filteredMenu.map {$0.price}.reduce(0,+)
        return total/Double(filteredMenu.count)
    }
    var totalPrice: Double {
        
        return filteredMenu.map {$0.price}.reduce(0,+)
    }
    var premiumCount: Int {
        filteredMenu.filter { $0.price > 10 }.count
    }
    
    var regularCount: Int {
        filteredMenu.filter { $0.price <= 10 }.count
    }
    // Cheat sheet
    /*
     filter - keep some items
     map - transform items
     reduce - combine items into value
     */
    
    
    var body: some View {
        
        
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundStyle(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.title)
                }
            Text("Average price: $\(averagePrice, specifier: "%.2f") ").font(.headline)// slightly larger than footnote
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .padding(.vertical, 6)
                .padding(.horizontal, 14)
                .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [.blue.opacity(0.8), .purple.opacity(0.8)]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    )
                
                
                
            VStack{
                Toggle("Show an special text", isOn:$showPremium)
                    .padding()
                Button("View Desserts"){
                    showDesserts.toggle()
                }
                
                .foregroundColor(.black)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            }
            
            
            List(sortedMenu){ item in
                    MenuItemView(item: item)
            }
            
            
            
            .sheet(isPresented: $showDesserts){
                DessertView()
            }
            
            
            Text("Premium: \(premiumCount) | Regular: \(regularCount) | Total: \(averagePrice, specifier: "%.2f")")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.primary)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background( // from Chatgpt
                    Capsule()
                        .fill(LinearGradient(
                            gradient: Gradient(colors: [.orange, .red]),
                            startPoint: .leading,
                            endPoint: .trailing))
                    )
                .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)
                
            
            
            
            
           
            
        }
    }
}
            
#Preview {
    MenuView()
}
//    List{
//         ForEach(menuItems.sorted(by: {$0.key < $1.key}), id: \.key) {
//               (name, price) in
//
//              HStack{
//                  VStack{
//                    Text(name)
//                      .font(.headline)
//                Text("$\(price, specifier: "%.2f")")
//                  .foregroundColor(.secondary)
//        }
//      Spacer()
//    if price > 10 {
//
//
//  HStack{
//    Image(systemName:"star.fill")
//      .foregroundColor(.yellow)
//Text("Premium")
//  .font(.caption)
//                        }
//
//                    .padding(6)
//                  .background(Color.orange.opacity(0.4))
//                .cornerRadius(6)
//          }
//    }
//}
//           }
//
//   }
//  }
//}



            
