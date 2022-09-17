//
//  UserViewModel.swift
//  phyllin
//
//  Created by Nikola Winata on 17/9/22.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
    let balance: Int
    let purchases: [Product: Int]
}
