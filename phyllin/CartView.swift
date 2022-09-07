//
//  CartView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 7/9/22.
//

import SwiftUI

struct CartView: View {
    @State private var showHome = false
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button {
                    print("help")
                    showHome = true
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                }
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .frame(width: 400, height: 50, alignment: .topLeading)
                .padding()
                .background(Colours.evergreen)
               
            List {
//                ForEach
                HStack {
                    Text("help")
                    Image(systemName: "location")
                }
               
                Text("help")
                Text("help")
                Text("help")
            }
        }
        .navigate(to: HomeView(), when: $showHome)
        
    }
        
        
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
