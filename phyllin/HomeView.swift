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
            ScrollView {
                HStack {
                    VStack(spacing: 10) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(.red)
                            }
                            .frame(maxWidth: .infinity)
                    }
                    VStack(spacing: 10) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(.red)
                            }
                            .frame(maxWidth: .infinity)
                        }
                }
                
                
            }.frame(width: 200, height: 700, alignment: .center)
            //need to find a way to have more than one item in a row while still scrolling vertically
            //how do view positions work, why is the scrollview in the middle qwq
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
