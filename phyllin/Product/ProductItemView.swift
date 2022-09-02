//
//  ProductItemView.swift
//  phyllin
//
//  Created by Nikola Winata on 26/8/22.
//

import SwiftUI

struct ProductItemView: View {
    var product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .cornerRadius(20)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
        
        
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
    }
}
