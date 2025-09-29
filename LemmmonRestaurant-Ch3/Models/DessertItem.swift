//
//  DessertItem.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 9/28/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
