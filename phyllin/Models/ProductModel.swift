//
//  ProductModel.swift
//  phyllin
//
//  Created by Nikola Winata on 27/8/22.
//

import Foundation

struct Product: Codable, Identifiable, Hashable {
    
    let id: Int
    let name: String
    let category: String
    let image: String
    let price: Int
    let description: String
    var formattedPrice: String {
        "$\(price)"
    }
}
//    var price: Int
//    var formattedPrice: String {
//        "$\(price)"
//    }
    
