//
//  NavigationBarDetailedView.swift
//  phyllin
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI

struct NavigationBarDetailedView: View {
    
    @State var showCart = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
            }) //: Button
            
            Spacer()
            
            Button(action: {
                showCart.toggle()
            }, label: {
                Image(systemName: "cart")
            }) //: Button
            
        } //: HStack
        .font(.title)
        .foregroundColor(.black)
        .background(Color.white)
    }
}

struct NavigationBarDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailedView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
