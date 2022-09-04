//
//  ProductGridView.swift
//  phyllin
//
//  Created by Nikola Winata on 2/9/22.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop
    @State var text = ""
   
    var product: Product
    //filter({"\($0)".contains(product.name.lowercased()) || text.isEmpty})
    
    //MARK: - Body
    var body: some View {
        VStack() {
//            TitleView(title: "Products")
            
            LazyVGrid(columns: gridLayout, spacing: 20) {
                ForEach(products.filter {text.isEmpty ? true : $0.name.lowercased().contains(product.name.lowercased())}) {
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

//struct ProductGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductGridView(product: products[0])
////            .previewLayout(.sizeThatFits)
////            .padding()
//    }
//}
