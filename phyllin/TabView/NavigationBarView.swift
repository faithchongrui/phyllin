//
//  NavigationBarView.swift
//  phyllin
//
//  Created by Nikola Winata on 3/9/22.
//

import SwiftUI

struct NavigationBarView: View {
    @State var SearchQuery = ""
    var body: some View {
        HStack {
            VStack {
                Text("Phyllin")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                TextField("Search", text: $SearchQuery)
                    .frame(width: 400, height: 50, alignment: .center)
                    .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
            }
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .frame(alignment: .top)
            })
            
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
