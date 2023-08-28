//
//  Navigation.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 20.07.2023.
//

import SwiftUI

struct Navigation: View {
    
    @StateObject var authorizationViewModel = AuthorizationViewModel()
    
    var body: some View {
        TabView {
            AuthorizationView(viewModel: authorizationViewModel)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Welcome")
                }
                .foregroundColor(.black)
            EducationView()
                .tabItem{
                    Text("Education")
                }
            AccountView(viewModel: authorizationViewModel)
                .tabItem{
                    Label("Account", systemImage: "terminal")
                        
                }
                .foregroundColor(.black)
            Text("Other")
                .tabItem{
                    Label("Other", systemImage: "terminal")
                        
                }
        }
        .background(.clear)
        .font(.headline)
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
