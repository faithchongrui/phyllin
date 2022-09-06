//
//  AuthViewModel.swift
//  phyllin
//
//  Created by Nikola Winata on 6/9/22.
//

import SwiftUI
import Firebase

final class AuthViewModel: ObservableObject {
    var user: User? {
        didSet {
            objectWillChange.send()
        }
    }
    func listenToAuthState() {
        Auth.auth().addStateDidChangeListener {[weak self] _, user in
            guard let self = self else {
                return
            }
            self.user = user
        }
    }
}
