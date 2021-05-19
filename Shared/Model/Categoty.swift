//
//  Categoty.swift
//  CoApp (iOS)
//
//  Created by Vik on 19.05.2021.
//

import SwiftUI

// Model and Sample Data

struct Category: Identifiable {
    
    var id: String = UUID().uuidString
    var image: String
    var title: String
}

var categories = [

    Category(image: "hamburger", title: "Эспрессо"),
    Category(image: "pizza", title: "Капучино"),
    Category(image: "sandwich", title: "Латте"),
    Category(image: "cupcake", title: "Милкшейки")
]
