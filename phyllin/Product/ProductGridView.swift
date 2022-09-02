//
//  ProductGridView.swift
//  phyllin
//
//  Created by Nikola Winata on 2/9/22.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            TitleView(title: "Products")
            
            LazyVGrid(columns: gridLayout, spacing: 20) {
                ForEach(products) {
                    product in
                    ProductItemView(product: product)
                        .onTapGesture {
                            feedback.impactOccurred()
                            withAnimation(.easeOut) {
                                shop.selectedProduct = product
                                shop.showingProduct = true
                            }
                        }
                }
            }
            
            
        }
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
