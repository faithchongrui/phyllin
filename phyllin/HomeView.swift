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
    
    @State private var showCart = false
    
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
                    ZStack {
                        TitleView(title: "products")
                        Button {
                            showCart = true
                        } label: {
                            Image(systemName: "cart.fill")
                                .padding(.leading, 300)
                                .font(.system(size: 50))
                        }
//                        .navigate(to: CartView(), when: $showCart)
                    }
                    SearchView(text: searchText)
                    
                    
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .background(Colours.tealgreen)
                
                NavigationView {
                    ScrollView(.vertical) {
                        ProductGridView(text: $searchText, product: products[0])
                            .frame(width: 390, height: .infinity)
                            
                    }
                }
                .searchable(text: $searchText)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
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
            
//
//        struct HomeView_Previews: PreviewProvider {
//            static var previews: some View {
//                HomeView()
//            }
//        }
    }
}

