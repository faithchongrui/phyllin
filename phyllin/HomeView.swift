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
    
    init() {
//        UITabBar.appearance().barTintColor = UIColor(named: "lighterbg")
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().itemPositioning = .centered
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
       
        }
    
    var body: some View {
        TabView {
            VStack {
                VStack {
                    TitleView(title: "products")
                    SearchView(text: $searchText)
                    
                }
                .background(Colours.tealgreen)
                ScrollView(.vertical) {
                                ProductGridView(product: products[0])
                        .frame(width: 390, height: .infinity)
                                    
                        }
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .background(.gray)
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            Text("Events")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Events")
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)

            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
        .accentColor(Colours.tealgreen)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .background(.black)
        
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
        HomeView()
    }
}
}
