//
//  AuthorizationAppV2App.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 27.04.2022.
//

import SwiftUI

@main
struct AuthorizationAppV2App: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
       WindowGroup {
            InitialView()
               .environmentObject(userManager)
        }
    }
}
