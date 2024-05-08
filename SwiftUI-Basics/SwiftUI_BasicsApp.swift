//
//  SwiftUI_BasicsApp.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 19/04/24.
//

import SwiftUI

@main
struct SwiftUI_BasicsApp: App {
    
    @AppStorage("isUserLoggedIn") var isUserLoggedIn = false

    var body: some Scene {
        WindowGroup {
            if isUserLoggedIn {
                HomeView()
                    .preferredColorScheme(.dark)
            } else {
                LoginView()
            }
        }
    }
}
