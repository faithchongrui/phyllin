//
//  ProductDetailView.swift
//  phyllin
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //Nav Bar
            NavigationBarDetailedView()
                .padding(.horizontal)
            
            //Header View
            HeaderDetailView()
                .padding(.horizontal)
            
            //Top Part Detail View
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail Bottom Part
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                
                // Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                    .padding(.top)
            }
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    
            )
            
        }
        .zIndex(0)
        .background(Colours.evergreen).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
