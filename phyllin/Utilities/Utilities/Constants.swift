//
//  Constants.swift
//  phyllin
//
//  Created by Nikola Winata on 27/8/22.
//

import Foundation
import SwiftUI

// MARK: Data
let categories: [Category] = Bundle.main.decode([Category].self, from: "category.json")
let products: [Product] = Bundle.main.decode([Product].self, from: "products.json")
let sampleProduct: Product = products[0]

//MARK: Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
