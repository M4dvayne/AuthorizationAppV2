//
//  CheckUserView.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 28.04.2022.
//

import SwiftUI

struct CheckUserView: View {

    let minSymbolQty: Int
    @Binding var userName: String
    
    var body: some View {
        if userName.count < 3 {
            Text("\(userName.count)")
                .foregroundColor(.red)
        } else {
            Text("\(userName.count)")
                .foregroundColor(.green)
        }
    }
}

struct CheckUserView_Previews: PreviewProvider {
    static var previews: some View {
        CheckUserView(minSymbolQty: 0, userName: .constant("someUser"))
    }
}
