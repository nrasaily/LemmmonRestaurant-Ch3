//
//  ContentView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("littleLemonLogo")
                
                Image("keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.green)
                
                
                Text("Hello, world!")
                    .padding()
                
                
                NavigationLink(destination:AboutView()){
                    Text("About")
                        .foregroundStyle(.blue)
                }
            }
            .navigationTitle("Home")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
