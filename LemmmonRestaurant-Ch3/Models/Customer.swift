//
//  Customer.swift
//  LemmmonRestaurant-Ch3
//
//  Created by Nar Rasaily on 10/3/25.
//

import Foundation

struct Customer: Identifiable {
    let id = UUID()
    var name: String
    var email: String
    var isPremium: Bool
}
