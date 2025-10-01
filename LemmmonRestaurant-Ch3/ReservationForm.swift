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
    @State var allergyNotes = ""
    @State var showSummary = false
    @State var reservationDate = Date()
    
    var body: some View {
        NavigationStack{
        Form{
            Section(header: Text("Reservation Details")){
                TextField("reservation name", text: $userName)
                    .padding()
                if userName == "" {
                    Text("Please enter your name please.")
                        .foregroundColor(.red)
                }
                
                Stepper("Number of Guest:  \(guestCount)" ,value: $guestCount, in: 1 ... 10)
                
                if guestCount >= 5 && guestCount <= 8 {
                    Text("For large parties, please arrive 10 minutes early")
                        .foregroundColor(.orange)
                }
                
                if guestCount > 8 {
                    Text("For large parties, we will contact you.")
                        .foregroundColor(.red)
                        .padding(.vertical)
                }
                    
                
                DatePicker("Date", selection:$reservationDate, displayedComponents: [.date,.hourAndMinute])
                
                TextField("Allergy Notes", text: $allergyNotes)
                
                Text("\(userName) reservered a table for \(guestCount) guest")
                    .padding(.vertical)

                Button("Confirm Reservation"){
                    if !userName.isEmpty {
                        showSummary=true
                    }
                }
                .disabled(userName.isEmpty)
                .navigationDestination(isPresented:$showSummary){
                    ReservationSummaryView(name: $userName, guests: $guestCount, reservationDate: $reservationDate)
                }
                
            }
                    
                }
            }
        }
    }
#Preview {
    ReservationForm()
}
