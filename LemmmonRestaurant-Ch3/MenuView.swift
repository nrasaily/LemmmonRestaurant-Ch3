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
        MenuItem(name: "Ramen", description: "Hot and tasty", price: 12.99)
    ]
    @State private var showDesserts = false
    
    
    
    var body: some View {
        
        
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundStyle(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.title)
                }
            Spacer()
            HStack{
                Text("Show an sprecial text")
                Spacer()
                }
                Button("View Desserts"){
                    showDesserts.toggle()
                }
                .padding()
                .font(.title)
                .font(.headline)
                .background(Color.green.opacity(0.3))
                .border(Color.green)
                .cornerRadius(10)
                
            
            
            List(menuItems){ item in
                MenuItemView(item: item)
                
            }
            .sheet(isPresented: $showDesserts){
                DessertView()
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
            
        }
    }
}
            
#Preview {
    MenuView()
}
            
