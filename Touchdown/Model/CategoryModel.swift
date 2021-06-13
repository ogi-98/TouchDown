//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
