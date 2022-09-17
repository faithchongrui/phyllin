//
//  CartListView.swift
//  phyllin
//
//  Created by Nikola Winata on 14/9/22.
//

import SwiftUI

struct CartListView: View {
    @ObservedObject var cart: ShoppingCart
    let products: [Product: Int]
    @Binding var showDelete: Bool
    var body: some View {
        let productsDic = products.map({$0.key})
        List {
            ForEach(productsDic, id: \.self) { key in
                ZStack {
                    Button(action: {
                        withAnimation{
                            cart.removeFromCart(toRemove: key)
                        }
                    }) {
                        HStack {
                            VStack {
                                Spacer()
                                Image(systemName: "xmark")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            .frame(width: 100)
                            .background(Color.red)
                            .frame(width: 100)
                            Spacer()
                        }
                    }.disabled(!showDelete)
                    CartItemView(cart: cart, purchase: key, quantity: products[key] ?? 0)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .offset(x: showDelete ? 100: 0)
                }
            }
        }
    }
}

struct CartListView_Previews: PreviewProvider {
    static var previews: some View {
        CartListView(cart: ShoppingCart(), products: [sampleProduct: 1], showDelete: .constant(true))
    }
}
