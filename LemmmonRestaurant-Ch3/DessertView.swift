//
//  DessertView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/28/25.
//

import SwiftUI

struct DessertView: View {
    
    //    let menuItems = ["Chocolate Cake":5.75,
    //                     "Carrot Cake": 4.99,
    //                     "Red Velvet Cupcakes": 3.49,
    //                     "Key Lime Pie": 8.25,
    //                     "Macarons": 13.99,
    //                     "Tiramisu": 8.75,
    //                     "Cheesecake Bites": 3.75]
    let dessertMenuItems = [
        DessertItem(name: "Chocolate Cake", description: "Sweet and moist", price: 5.75),
        DessertItem(name: "Carrot Cake", description: "Cold and Sweet", price: 4.99),
        DessertItem(name: "Red Velvet Cupcakes", description: "Tasty and moist", price: 3.49),
        DessertItem(name: "Key Lime Pie", description: "Tart and sweet", price: 8.25),
        DessertItem(name: "Macarons", description: "Sweat", price: 13.99)
    ]
    
    var body: some View {
        VStack (alignment: .leading){
            
        
            Text("Desserts")
                .font(.largeTitle.bold())
                .foregroundStyle(.purple)
                .padding(.horizontal)
                
            List(dessertMenuItems) { item in
                HStack{
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text(item.name)
                            .font(.headline)
                            .foregroundStyle(.primary)
                        Text(item.description)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    Text("\(item.price, format: .currency(code: "USD"))")
                        .font(.subheadline.bold())
                        .foregroundStyle(.green)
                        .padding(6)
                        .background(Color.yellow.opacity(0.2))
                }
                
            }
        }
    }
}
    //        VStack {
    //            HStack {
    //                Image(systemName: "fork.knife")
    //                    .foregroundStyle(.green)
    //                    .font(.system(size: 32))
    //                Text("Menu for Desserts")
    //                    .font(.title)
    //            }
    //            .padding()
    //        }
    //    }
    //}

            
            //            List{
            //                ForEach(menuItems.sorted(by: {$0.key < $1.key}), id: \.key) {name,price
            //                    in
            //                    HStack{
            //                        VStack(alignment: .leading){
            //                            Text(name)
            //                                .font(.headline)
            //                            Text("$\(price, specifier: "%.2f")")
            //                        }
            //                        Spacer()
            //                        if price < 7 {
            //                            HStack{
            //                                Image(systemName: "star.fill")
            //                                    .foregroundStyle(.green)
            //
            //                                Text("Value")
            //
            //                            }
            //                            .font(.caption)
            //                            .fontWeight(.bold)
            //                            .foregroundColor(.green)
            //                            .padding(.horizontal, 6)
            //                            .padding(.vertical, 8)
            //                            .background(Color.green.opacity(0.3))
            //                            .clipShape(Capsule())
            //                        }else if price > 7{
            //                            HStack{
            //                                Image(systemName: "star.fill")
            //                                    .foregroundStyle(.orange)
            //                                Text("Premium")
            //
            //                            }
            //                            .font(.caption)
            //                            .fontWeight(.bold)
            //                            .padding(.horizontal, 6)
            //                            .padding(.vertical, 8)
            //                            .foregroundColor(.orange)
            //                            .background(Color.orange.opacity(0.3))
            //                            .padding(.vertical, 4)
            //                            .clipShape(Capsule())
            //
            //                        }
            //                    }
            //                }
            //            }
            //        }
            //    }
            //}
            //
            
            //#Preview {
            // DessertView()
            //}
        
