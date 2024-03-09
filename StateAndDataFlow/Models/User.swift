//
//  User.swift
//  StateAndDataFlow
//
//  Created by Антон Пеньков on 09.03.2024.
//

import Foundation

final class User: ObservableObject {
    @Published var name: String
    @Published var isLoggedIn: Bool
    
    init(name: String, isLoggedIn: Bool) {
        self.name = name
        self.isLoggedIn = isLoggedIn
    }
}
