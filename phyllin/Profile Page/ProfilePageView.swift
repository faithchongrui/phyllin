//
//  ProfilePageView.swift
//  phyllin
//
//  Created by Nikola Winata on 7/9/22.
//

import SwiftUI

struct ProfilePageView: View {
    @State private var username = ""
    @State private var fullname = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        if let user = authViewModel.currentUser {
            NavigationView {
                Form {
                    TextField("Name", text: $fullname)
                    TextField("Username", text: $username)
                }
                .navigationTitle("Account")
            }
        }
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
