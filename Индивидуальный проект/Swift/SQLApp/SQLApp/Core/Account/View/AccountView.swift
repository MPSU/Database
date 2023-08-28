//
//  AccountView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 23.07.2023.
//

import SwiftUI

struct AccountView: View {
    @ObservedObject var viewModel: AuthorizationViewModel
    
    let userAvatar: Image = Image("profileImage"+String(Int.random(in: 0...10)))

    var body: some View {
        VStack {
            userAvatar // Вставляем изображение аватарки
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5)) // Добавляем белую обводку вокруг
                .frame(width: 300, height: 350)
                .padding()
            
            Divider()
            
            VStack(alignment: .center, spacing: 3) {
                
                if let userData = viewModel.userData {
                    Text("ID: \(userData.studentNumber)")
                        .font(.custom("Porsche Next TT", size: 22).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Text("\(userData.surname) \(userData.name) \(userData.middleName ?? "")")
                        .font(.custom("Porsche Next TT", size: 22).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Text(userData.dateOfBirth)
                        .font(.custom("Porsche Next TT", size: 22).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Text(userData.email)
                        .font(.custom("Porsche Next TT", size: 22).weight(.semibold))
                        .foregroundColor(.black)
                } else {
                    Text("")
                    Text("")
                    Text("")
                    Text("")
                }
            }
            .padding()
            
            HStack {
                Image("vk")
                Image("telegram")
                Image("instagram")
                Image("twitter")
            }
            .padding()

        }
        .animation(.spring())
    }
}

//struct AccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountView(viewModel: AuthorizationViewModel())
//    }
//}
