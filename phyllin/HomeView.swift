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
    
    init() {
//        UITabBar.appearance().barTintColor = UIColor(named: "lighterbg")
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().itemPositioning = .centered
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
       
        }
    
    var body: some View {
        Group {
            if viewModel.user != nil {
                mainInterfaceView
            }
            else {
                SignUpView()
            }
        } .onAppear {
            viewModel.listenToAuthState()
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
                        TitleView(title: "products")
                        VStack(alignment: .trailing) {
                            Image(systemName: "cart.fill")
                        }
                            
                    }
                    SearchView(text: $searchText)
                    
                    
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .background(Colours.tealgreen)
                
                ScrollView(.vertical) {
                    ProductGridView(product: products[0])
                        .frame(width: 390, height: .infinity)
                        
                }
                
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
            

    }
    
}

