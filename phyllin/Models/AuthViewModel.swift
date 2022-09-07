//
//  AuthViewModel.swift
//  phyllin
//
//  Created by Nikola Winata on 6/9/22.
//

import SwiftUI
import Firebase

final class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login with email: \(email)")
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("DEBUG: Did log user in.")
        }
    }
    
    func register(withEmail email: String, password: String, username: String, fullname: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            
            let data =
            [
                "email": email,
                "username": username,
                "fullname": fullname,
                "uid": user.uid
            ]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    print("DEBUG: Did upload user data")
                }
            
        }
    }
    func signOut() {
        // sets user session to nil so we show login view
        userSession = nil
        
        // signs user out on server
        try? Auth.auth().signOut()
    }
}
