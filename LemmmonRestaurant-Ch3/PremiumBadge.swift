//
//  PremiumBadge.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 10/3/25.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Premium")
                .font(.caption)
        }
        .font(.caption)
        .foregroundColor(.orange)
        .padding(6)
        .background(.orange.opacity(0.1))
        .cornerRadius(6)
    
    }
}

#Preview {
    PremiumBadge()
}
