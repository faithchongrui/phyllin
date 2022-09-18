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
                    Section(header: Text("Personal Information")) {
                        TextField("\(user.fullname)", text: $fullname)
                        TextField("\(user.username)", text: $username)
                    }
                    Button {
                        authViewModel.signOut()
                    } label: {
                        Text("Logout")
                    }
                }
                .navigationTitle("Account")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                           hideKeyboard()
                        } label: {
                            Image(systemName: "keyboard.chevron.compact.down")
                        }
                        Button("Save", action: saveUser)
                    }
                }
            }
        }
    }
    func saveUser() {
        print("user saved")
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
