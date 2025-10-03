//
//  CustomerView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 10/3/25.
//

import SwiftUI

struct CustomerView: View {
    
        // array of customers
    let customers = [
        Customer(name: "Ane",email: "a@gmail.com", isPremium:true),
        Customer(name: "Jhon",email: "j@gmail.com", isPremium: false),
        Customer(name: "Kate",email: "k@gmail.com", isPremium: false),
        Customer(name: "Kevin",email: "e@gmail.com", isPremium: true)
    ]
    // 1. declare the showpremium variable
    @State private var showPremium = false
    //2. adopt the computed filter
    var filteredCustomers: [Customer]{
        showPremium ? customers.filter(\.isPremium) :
        customers
    }
    var body: some View {
        VStack {
            Text("Customers List")
                .font(.headline)
            Toggle("Show Premium Only", isOn:$showPremium)
                .padding(.horizontal)
            List(filteredCustomers){ customer in
            HStack{
                VStack(alignment: .leading){
                    Text(customer.name)
                        Text(customer.email)
                            .font(.caption)
                        }
                    Spacer()
                    if customer.isPremium {
                        Image(systemName: "star.fill")
                        Text(String(customer.isPremium))
                }
            }
                
                
            }
                
            }
    }
}

#Preview {
    CustomerView()
}
