//
//  Shop.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 15.06.2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
