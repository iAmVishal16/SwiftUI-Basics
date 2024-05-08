//
//  LoginView.swift
//  SwiftUI-Basics
//
//  Created by Vishal Paliwal on 07/05/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @AppStorage("isUserLoggedIn") var isUserLoggedIn = false
    
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
//        let _ = print("render")
        
        VStack {
            TextField("Username", text: $username)
                .foregroundStyle(colorScheme == .dark ? .white : .black)
                .padding()
                .background(
                    .regularMaterial
                )
                .padding([.leading, .trailing], 16)
            
            SecureField("Password", text: $password)
                .foregroundStyle(colorScheme == .dark ? .white : .black)
                .padding()
                .background(
                    .regularMaterial
                )
                .padding([.leading, .trailing], 16)

            Button {
                print("My username is \(username)")
                print("My password is \(password)")
                
                if username == "iamvishal16" && password == "123456" {
                    isUserLoggedIn = true
                }
                
            } label: {
                Text("Login")
                    .font(.title2)
                    .frame(width: 200)
                    .padding()
                    .background(
                        colorScheme == .dark ? .white : .black
                    )
                    .clipShape(Capsule())
                    .foregroundStyle(
                        colorScheme == .dark ? .black : .white
                    )
                    .bold()
            }
            .padding()

        }
    }
}

#Preview {
    LoginView()
}
