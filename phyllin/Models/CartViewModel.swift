//
//  ShoppingCartView.swift
//  phyllin
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI

class ShoppingCart: ObservableObject {
    @Published var cartProduct: [Product] = []
    @Published var cartProductDic: [Product: Int] = [:]
    @Published var totalPrice: Double = 0
    
    func addToCart(addedProduct: Product, quantity: Int) {
        let products = cartProductDic.map({$0.key})
        
        if products.isEmpty {
            withAnimation {
                cartProductDic[addedProduct] = quantity
            }
            return
        }
        for product in products {
            if addedProduct.id == product.id {
                withAnimation {
                    cartProductDic[product]! += quantity
                }
            } else {
                if !products.contains(where: {$0.id == addedProduct.id}) {
                    withAnimation {
                        cartProductDic[addedProduct] = quantity
                    }
                }
            }
        }
        print(cartProductDic)
    }
    func changeQuantity(product: Product, quantity: Int) {
        cartProductDic[product] = quantity
    }
    
    func calculateTotalPrice(){
        var totalprice: Double = 0
        for (product,quantity) in cartProductDic {
            totalprice += Double(product.price) * Double(quantity)
        }
        withAnimation{
            totalPrice = totalprice
        }
    }
    func removeFromCart(toRemove: Product){
        cartProductDic.removeValue(forKey: toRemove)
    }
}
