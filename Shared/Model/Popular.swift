//
//  Popular.swift
//  CoApp (iOS)
//
//  Created by Vik on 19.05.2021.
//

import SwiftUI

struct Popular: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var description: String
    var image: String
    var price: String
}

var popular_Items = [

    Popular(title: "Beef Burger", description: "Cheesy Mozarella", image: "burger1", price: "60"),
    
    Popular(title: "Double Burger", description: "Double Beef", image: "burger2", price: "120"),
]
