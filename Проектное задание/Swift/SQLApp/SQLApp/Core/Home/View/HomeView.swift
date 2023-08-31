//
//  HomeView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 20.07.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color(hex: "#F6F5F8"))
                .padding(.top, 10)
                .padding(20)
            
            Navigation()
                .padding(20)
        }
        .background(LinearGradient(colors: [topYellow, bottomYellow],
                                   startPoint: .top,
                                   endPoint: .bottom))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
