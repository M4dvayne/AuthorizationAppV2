//
//  ButtonView.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 29.04.2022.
//

import SwiftUI


struct ButtonView: View {
    
    @EnvironmentObject private var user: UserManager
    
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        VStack {
            Button(action: { timer.startTimer()}) {
                Text(timer.buttonTitle)
                    .font(.title)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 60)
            .background(Color.red)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
            )
            Spacer()
            
            Button(action: {user.isRegistered.toggle()}, label: { Text("Log out")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 60)
                    .background(Color.red)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 4)
                    )})
                .offset(y: -50)
        }
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: TimeCounter())
            .environmentObject(UserManager())
    }
}

