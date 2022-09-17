//
//  CheckOutView.swift
//  phyllin
//
//  Created by Nikola Winata on 14/9/22.
//

import SwiftUI

struct CheckOutView: View {
    @EnvironmentObject var cart: ShoppingCart
    let product: [Product]
    let price: Double
    var taxes: Double {
        (price * 20 / 100)
    }
    var delivery: Double {
        if price > 100 {
            return 0
        } else {
            return 50
        }
    }
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Color.thing.edgesIgnoringSafeArea(.bottom)
                Color.thing2.opacity(0.3).edgesIgnoringSafeArea(.bottom)
                VStack(alignment: .center, spacing: 0) {
                    HStack {
                        Button(action: {withAnimation{cart.showShowcaseSheet.toggle()}}, label: {
                            Image(systemName: "xmark")
                                .imageScale(.medium)
                                .foregroundColor(.darkText)
                        }).padding(8)
                        .background(Color.thing2)
                        .clipShape(Circle())
                        Spacer()
                    }.padding()
                    Spacer()
                    ForEach(product){product in
                        HStack {
                            Text(product.name)
                                .font(.caption)
                                .lineLimit(1)
                            Text("$\(String(format: "%.2f", product.price))").bold()
                            Spacer()
                        }
                        .foregroundColor(Color.darkText)
                        .padding(.horizontal)
                        .background(Color.thing)
                        .padding(.horizontal)
                    }
                    Text("Taxes: $\(String(format: "%.2f", taxes))")
                        .font(.caption)
                        .padding(.top)
                    Text("Delivery: $\(String(format: "%.2f", delivery))")
                        .font(.caption)
                    Text("Final Price: $\(String(format: "%.2f", price + taxes + delivery))")
                        .font(.caption)
                    Button(action: {print("Paying ...")}) {
                        Text("Click Here to Pay").bold()
                            .padding()
                            .background(Color.thing2)
                            .cornerRadius(18)
                    }.padding()
                }
            }
        }
    }
}

struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutView(product: Array(products[0...2]), price: 500)
    }
}
