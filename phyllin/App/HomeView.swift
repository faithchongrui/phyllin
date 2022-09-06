//
//  HomeView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 20/8/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var SearchQuery = ""
    @State private var searchText = ""
    
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
            } else {
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
            ScrollView(.vertical) {
                ProductGridView()
                    .frame(width: 390, height: .infinity)
                
                
            }.frame(width: 400, height: 700, alignment: .center)
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
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            
        }
        .accentColor(Colours.tealgreen)

    }
}
