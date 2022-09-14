//
//  AddToCartDetailView.swift
//  phyllin
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    @EnvironmentObject var cart: ShoppingCart
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .textCase(.uppercase)
                .foregroundColor(.white)
            Spacer()
        }) //: Button
            .padding(15)
            .background(Colours.evergreen)
            .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
    }
}
