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
            Text("Home")
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
