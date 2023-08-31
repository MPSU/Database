//
//  AuthorizationViewModel.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 23.07.2023.
//

import Foundation

class AuthorizationViewModel: ObservableObject {
    @Published var isLoggedIn = false
    @Published var username = ""
    @Published var password = ""
    @Published var userData: AccountModel?
    
    let postgreSQLManager: PostgreSQLManager = PostgreSQLManager()

    func onLoginButtonTapped() -> Bool {
        isLoggedIn = true
        
        do {
            guard let user = try postgreSQLManager.findUser(email: username, password: password) else {
                print("Пользователь с указанными данными не найден или есть другая ошибка.")
                return false
            }
            
            self.userData = user
            
        } catch {
            print("Ошибка при поиске пользователя: \(error)")
        }
        
        if self.userData?.email != username {
            isLoggedIn = false
        }
        
        if username == "" || password == ""{
            isLoggedIn = false
        }
        
        return isLoggedIn
    }
    
    func logout() -> Bool {
        isLoggedIn = false
        userData = nil
        return isLoggedIn
    }
}
