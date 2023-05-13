//
//  LoginView.swift
//  Spotify
//
//  Created by Aditya Gaba on 11/05/23.
//  Copyright © 2023 xyz. All rights reserved.
//
import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordHidden: Bool = true
    @State private var showPassword: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("primary_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .padding(.bottom, 40)
                
                VStack(spacing: 20) {
                    TextField("Email or username", text: $email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        
                    
                    HStack {
                        if showPassword {
                            TextField("Password", text: $password)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                        } else {
                            SecureField("Password", text: $password)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                        
                        }
                        
                         Button(action: {
                             showPassword.toggle()
                         }) {
                             Image(systemName: showPassword ? "eye.slash" : "eye")
                                 .foregroundColor(.gray)
                             
                         }
                         .padding()
                         .background(Color.white)
                         .cornerRadius(8)
                        
                       
                    }
                    
                    Button(action: {
                        // Perform login action here
                    }) {
                        Text("LOG IN")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                    
                    Text("Forgot your password?")
                        .foregroundColor(.white)
                        .font(.footnote)
                        .padding(.top, 10)
                    
                    Divider()
                    
                    HStack {
                        Text("Don't have an account?")
                            .foregroundColor(.white)
                            .font(.footnote)
                        
                        Text("SIGN UP")
                            .foregroundColor(.green)
                            .font(.footnote)
                    }
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .padding()
            }
        }
        .statusBar(hidden: true)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

