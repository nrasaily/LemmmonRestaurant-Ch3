//
//  MenuItemView.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/28/25.
//

import SwiftUI

struct MenuItemView: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                
                Text(item.description)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
                Text(String(item.price))
                    .foregroundColor(Color.secondary)
                    
                
            }
            Spacer()
            // if Statement
            if item.price > 10 {
                PremiumBadge()
            }
            
            
        }
        
    }
}

//#Preview {
  //  MenuItemView(item: item)
//}
