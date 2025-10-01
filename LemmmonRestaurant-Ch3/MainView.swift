//
//  MainView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/13/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = false
    @State private var userName = ""
    
    var body: some View {
        NavigationView{
            if isLoggedIn == true {
                VStack {
                    Text("Welcome \(userName)")
                        .font(.title)
                    Image("littleLemonLogo")
//                    NavigationLink("About Us", destination: AboutView())
                    ReservationForm()
                    
                    Button("Logout"){
                        print( "Logout")
                        isLoggedIn = false
                        userName = ""
                        
                    }
                }
                
            } else {
                LoginView(isLoggedIn:$isLoggedIn, userName: $userName)
            }
        }
    }
}

#Preview {
    MainView()
}
