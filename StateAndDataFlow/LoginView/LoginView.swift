//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                TextField("Enter your name", text: $loginViewVM.name)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text(loginViewVM.name.count.formatted())
                    .foregroundStyle(loginViewVM.name.count > 2 ? .green : .red)
            }
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(loginViewVM.name.count < 3)
        }
        .padding()
    }
    
    private func login() {
        if loginViewVM.name.count > 2 {
            loginViewVM.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
