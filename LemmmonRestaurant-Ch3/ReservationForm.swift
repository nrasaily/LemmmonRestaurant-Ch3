//
//  ReservationForm.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/10/25.
//

import SwiftUI

struct ReservationForm: View {
    @State var userName = ""
    @State var guestCount = 1
    var body: some View {
        Form{
            Section(header: Text("Reservation Details")){
                TextField("reservation name", text: $userName)
                    .padding()
                if userName == "" {
                    Text("Please enter your name please.").foregroundColor(.red)
                }
                
                Stepper("Number of Guest:  \(guestCount)" ,value: $guestCount, in: 1 ... 10)
                Text("\(userName) reservered a tablefor \(guestCount) guest")
                    .padding()
                if guestCount > 5 {
                    Text("For large parties, we will contact you")
                        .foregroundColor(.red)
                }
            }
        }
    }
}
#Preview {
    ReservationForm()
}
