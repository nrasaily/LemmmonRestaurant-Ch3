//
//  LoginView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/13/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn:Bool
    @Binding var userName:String
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button("Log In"){
                    print("Trying to log in")
                    
                    if userName == "Nar" {
                        isLoggedIn = true
                    }
           
                }
            }
            .navigationTitle("Login")
            
        }
    }
}
//#Preview {
    //LoginView()
//}
