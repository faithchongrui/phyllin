//
//  ProductModel.swift
//  phyllin
//
//  Created by Nikola Winata on 27/8/22.
//

import Foundation

struct Product: Codable, Identifiable {
    
    var id: Int
    var name: String
    var price: Int
    var formattedPrice: String {
        "$\(price)"
    }
}
