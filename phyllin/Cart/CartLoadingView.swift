//
//  CartLoadingView.swift
//  phyllin
//
//  Created by Nikola Winata on 16/9/22.
//

import SwiftUI

struct CartLoadingView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("Your cart is empty").font(.headline)
            }
            Spacer()
        }
    }
}

struct CartLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        CartLoadingView()
    }
}
