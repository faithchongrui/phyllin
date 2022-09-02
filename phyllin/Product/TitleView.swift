//
//  TitleView.swift
//  phyllin
//
//  Created by Nikola Winata on 2/9/22.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    var title: String
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Products")
            .previewLayout(.sizeThatFits)
        
    }
}
