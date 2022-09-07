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
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State private var showCart = false
    
    init() {
//        UITabBar.appearance().barTintColor = UIColor(named: "lighterbg")
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().itemPositioning = .centered
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
       
        }
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                mainInterfaceView
            }
            else {
                SignUpView()
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    var mainInterfaceView: some View {
        TabView {
            VStack {
                VStack {
                    ZStack {
                        Button {
                            showCart = true
                        } label: {
                            Image(systemName: "cart.fill")
                                .padding(.leading, 300)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                        }
                        TitleView(title: "products")
                        
                       
                    }
                    SearchView(text: searchText)
                    
                    
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .background(Colours.evergreen)
                
                NavigationView {
                    ScrollView(.vertical) {
                        ProductGridView(text: $searchText, product: products[0])
                            
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
        .accentColor(Colours.evergreen)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .background(.black)
        .navigate(to: CartView(), when: $showCart)

    }
        
    
}

