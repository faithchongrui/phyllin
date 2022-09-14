//
//  CartItemView.swift
//  phyllin
//
//  Created by Nikola Winata on 13/9/22.
//

import SwiftUI

struct CartItemView: View {
    @ObservedObject var cart: ShoppingCart
    var purchase: Product
    @State var quantity: Int = 0
    var body: some View {
        
        HStack {
            ZStack {
                Image(purchase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding(.horizontal, 10)
                .padding(.top, 10)
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(purchase.name)
                    .fontWeight(.bold)
                Text("$\(String(format: "%.2f", purchase.price * Double(quantity)))")
            }
            .padding()
            Spacer()
            Picker(selection: $quantity, label: Text("Picker"), content: {
                ForEach(1...10, id: \.self) { quantity in
                    Text("\(quantity)")
                        .tag(quantity)
                } .onChange(of: quantity, perform: { value in
                    cart.changeQuantity(product: purchase, quantity: quantity)
                })
            })
            .pickerStyle(WheelPickerStyle())
            .frame(width: 50, height: 50, alignment: .center)
            .clipped()
            .padding(.trailing)
        }
        .frame(width: getRelativeWidth(428), height: getRelativeHeight(153))
        
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(cart: ShoppingCart(), purchase: products[0])
            .previewLayout(.fixed(width: getRelativeWidth(428), height: getRelativeHeight(153)))
    }
}
