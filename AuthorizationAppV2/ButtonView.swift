//
//  ButtonView.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 29.04.2022.
//

import SwiftUI


struct ButtonView: View {
    
    @State private var showingDetail = false
    
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        NavigationView{
            NavigationLink(destination: LoginView(), label: {VStack {
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
                
                Text("Log out")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                    .frame(width: 200, height: 60)
                    .background(Color.red)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 4)
                    )
                    .offset(y: -50)
            }
            })
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: TimeCounter())
    }
}

