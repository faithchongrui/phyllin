//
//  HomeView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 20/8/22.
//

import SwiftUI

struct HomeView: View {
    @State var SearchQuery = ""
    @State private var searchText = ""
    
    var body: some View {
        TabView {
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    ProductGridView()
                        .padding(15)
  
            }.frame(width: 200, height: 700, alignment: .center)

                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Events")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Events")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            
        }
        .accentColor(Colours.tealgreen)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
