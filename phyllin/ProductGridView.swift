//
//  ProductGridView.swift
//  phyllin
//
//  Created by Nikola Winata on 2/9/22.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop
    @Binding var text: String
   
    var product: Product
    //filter({"\($0)".contains(product.name.lowercased()) || text.isEmpty})
//    var searchresults: [String] {
//        if text.isEmpty {
//            return [product.name]
//        } else {
//            return [product.name].filter { $0.contains(text) }
//        }
//    }
    //MARK: - Body
    var body: some View {
        
        VStack() {
//            TitleView(title: "Products")
            
            LazyVGrid(columns: gridLayout, spacing: 20) {
                ForEach(products) {
                    product in
//                    NavigationLink(destination: <#T##() -> _#>, label: <#T##() -> _#>)
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

//struct ProductGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductGridView(product: products[0])
////            .previewLayout(.sizeThatFits)
////            .padding()
//    }
//}
