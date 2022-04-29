//
//  InitialView.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 27.04.2022.
//

import SwiftUI

struct InitialView: View {
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Group{
            if user.isRegistered {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InitialView()
                .environmentObject(UserManager())
        }
    }
}
