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
        NavigationView {
            Form {
                TextField("What are you looking for?", text: $SearchQuery)
            }
            .navigationTitle("")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
