//
//  loginStatusView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 24.07.2023.
//

import SwiftUI

struct loginStatusView: View {
    @Binding var authStatusMessage: String
    var body: some View {
        VStack {
            Text(authStatusMessage)
                .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                .foregroundColor(.black)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(authStatusMessage == "Успешно авторизован" ? Color(hex: "#baffc9") : Color(hex: "#ffb3ba"))
                .cornerRadius(10)
                .shadow(color: .white, radius: 4, x: 0, y: 2)
                .padding()
        }
    }
}

struct loginStatusView_Previews: PreviewProvider {
    static var previews: some View {
        loginStatusView(authStatusMessage: .constant("Успешно авторизован"))
    }
}
