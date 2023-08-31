//
//  SubjectView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 20.07.2023.
//

import SwiftUI

struct SubjectView: View {
    
    // MARK: Parameters
    
    /// Значение оценки, которое
    /// скорее всего приходит из PSQL
    
    var progressValue: Double
    
    /// Название предмета
    var subjectTitle: String
    
    /// Я бы добавил тут еще параметров
    /// для настройки компонента
    /// Но потом мб
    
    var body: some View {
        HStack {
            Text(subjectTitle)
                .font(.custom("Porsche Next TT", size: 24).weight(.bold))
                .foregroundColor(.black)
            Spacer()
    
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 70, height: 10)
                    .foregroundColor(.gray)
                    .cornerRadius(5)

                Rectangle()
                    .frame(width: CGFloat(progressValue) / 100 * 70, height: 10)
                    .foregroundColor(progressColor(progressValue: progressValue))
                    .cornerRadius(5)
            }

            Text("\(Int(progressValue)) / 100")
                .font(.custom("Porsche Next TT", size: 16).weight(.bold))
                .foregroundColor(.black)
        }
        .padding(3)
    }
}



struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView(progressValue: 50, subjectTitle: "iOS Development")
    }
}
