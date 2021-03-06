//
//  Constant.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 9.06.2021.
//

import SwiftUI

//DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]

//COLOR

let colorBackground:Color = Color("ColorBackground")
let colorGray:Color = Color(UIColor.systemGray4)

//LAYOUT

let columnSpacing: CGFloat = 10.0
let rowSpacing: CGFloat = 10.0
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
let feedbackSoft = UIImpactFeedbackGenerator(style: .soft)
let feedbackgenerator = UINotificationFeedbackGenerator()
//API
//IMAGE
//FONT
//STRING
//MISC
