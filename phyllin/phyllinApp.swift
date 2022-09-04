//
//  phyllinApp.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 19/8/22.
//

import SwiftUI

@main
struct phyllinApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environmentObject(Shop())
        }
    }
}
