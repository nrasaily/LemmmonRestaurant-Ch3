//
//  ReservationSummaryView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/15/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var guests: Int
    @Binding var reservationDate: Date
    
        var body: some View {
        VStack(alignment: .leading, spacing:10){
            Text("Reservation Completed!")
                .font(.title)
                .foregroundColor(.green)
            Text("Name: \(name)")
            Text("Guest \(guests)")
            Text("Date \(reservationDate)")
        }
    }
}

//#Preview {
  //ReservationSummaryView()
//}
