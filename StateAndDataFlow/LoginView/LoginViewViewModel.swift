//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

final class LoginViewViewModel: ObservableObject {    
    @AppStorage("name") var name = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
}
