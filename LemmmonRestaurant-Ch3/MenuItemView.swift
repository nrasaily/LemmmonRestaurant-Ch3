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
                
                Text(String(item.price))
                    .foregroundColor(Color.secondary)
                    
                
            }
            Spacer()
            // if Statement
            if item.price > 10 {
                
                
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
        
    }
}

//#Preview {
  //  MenuItemView(item: item)
//}
