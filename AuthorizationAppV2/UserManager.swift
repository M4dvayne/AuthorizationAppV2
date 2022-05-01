//
//  UserManager.swift
//  AuthorizationAppV2
//
//  Created by Вячеслав Кремнев on 27.04.2022.
//

import Combine


class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
