//
//  LoginView.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 27.04.2022.
//

import SwiftUI

struct LoginView: View {

    let minSymbolQty = 3

    @AppStorage("userName") private var userName = ""
    @EnvironmentObject private var user: UserManager
    

    var body: some View {
        VStack {
            HStack {
                TextField("Please enter your name", text: $userName)
                    .multilineTextAlignment(.center)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).frame(width: 300, height: 25))
                
                CheckUserView(minSymbolQty: minSymbolQty, userName: $userName)
                    .padding(.trailing, 40)
            }
            
            Button(action: registerUser) {
                if userName.count >= 3 {
                    HStack{
                        Image(systemName: "checkmark.circle")
                        Text("OK")
                    }
                } else {
                    HStack{
                        Image(systemName: "checkmark.circle")
                            .disabled(true)
                        Text("OK")
                            .disabled(true)
                    }
                }
            }
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
        }
    } 
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}





