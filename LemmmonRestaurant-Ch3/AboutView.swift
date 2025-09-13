//
//  AboutView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/8/25.
//

import SwiftUI

struct AboutView: View {
    let userName = "Nar Rasaily"
    @State var orders = 11
    @State var clientName = ""
    var body: some View {
        VStack {
            Text("Welcome \(userName) to Little lemon!")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            Text("You have order \(orders) times")
            Button("Order again") {
                orders += 1
            
            }
            Button("Reset"){
                orders = 0
            }
            TextField("Enter client name: ", text: $clientName)
                .padding()
                .textFieldStyle(.roundedBorder)
            Text("Hi \(clientName)!")
            
        }
        .navigationTitle(Text("About Us"))
    }
}
    #Preview {
        AboutView()
}
