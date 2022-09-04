//
//  Shop.swift
//  phyllin
//
//  Created by Nikola Winata on 2/9/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
