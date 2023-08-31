//
//  AuthorizationView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 23.07.2023.
//

import SwiftUI

struct AuthorizationView: View {
    @StateObject var viewModel: AuthorizationViewModel
    @State private var isButtonPressed = false
    @State private var isLogoutPressed = false
    @State private var authStatusMessage = ""
    @State private var isMessageVisible = false
    @State private var isLoggedIn = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    TextField("Логин", text: $viewModel.username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 200)
                        .padding()
                    
                    SecureField("Пароль", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 200)
                        .padding()
                    
                    if !isLoggedIn {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                isButtonPressed = true
                            }
                            let success = viewModel.onLoginButtonTapped()
                            print(success)
                            
                            isLoggedIn = success
                            
                            withAnimation(.easeInOut(duration: 0.5)) {
                                isButtonPressed = false
                            }
                            
                            authStatusMessage = success ? "Успешно авторизован" : "Ошибка авторизации"
                            
                            withAnimation(.spring()) {
                                isMessageVisible = true
                            }
                            print(authStatusMessage)
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isMessageVisible = false
                            }
                        }) {
                            Text("Авторизироваться")
                                .font(.custom("Porsche Next TT", size: 22).weight(.bold))
                                .frame(width: 170, height: 20)
                                .foregroundColor(topYellow)
                                .padding()
                                .background(isButtonPressed ? Color.gray : .black)
                                .cornerRadius(10)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        
                    } else {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                isLogoutPressed = true
                            }
                            
                            withAnimation(.easeInOut(duration: 0.5)) {
                                isLogoutPressed = false
                            }
                            
                            isLoggedIn = viewModel.logout()
                            
                        }) {
                            Text("Выйти")
                                .font(.custom("Porsche Next TT", size: 22).weight(.bold))
                                .frame(width: 170, height: 20)
                                .foregroundColor(topYellow)
                                .padding()
                                .background(isLogoutPressed ? Color.gray : .black)
                                .cornerRadius(10)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                    }
                    
                    if isMessageVisible {
                        withAnimation(.spring()) {
                            loginStatusView(authStatusMessage: $authStatusMessage)
                                .transition(.move(edge: .bottom))
                        }
                    }
                }
            }
        }
    }
}
