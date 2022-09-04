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
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Colours.evergreen, lineWidth: 10)
                .background(.white)
            VStack(alignment: .leading) {
                VStack(alignment: .center) {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding(.horizontal, 10)
                        .padding(.top, 10)
                }
                    
                        
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.black)
                    .padding(.horizontal)
                    .scaledToFit()
                    .minimumScaleFactor(0.01)
                    .foregroundColor(.black)
                
                Text("$\(product.price)")
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(.leading)
                    .padding(.bottom, 10)
                    
            }
            
        }
        .frame(width: 180, height: 200)
       
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            
    }
}
