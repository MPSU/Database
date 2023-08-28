//
//  SubjectDetailsView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 21.07.2023.
//

import SwiftUI

struct SubjectDetailsView: View {
    
    let subjectDetails: SubjectDetailsModel

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text(subjectDetails.subjectTitle)
                    .font(.custom("Porsche Next TT", size: 24).weight(.bold))
                    .foregroundColor(.black)
                
                
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: 200, height: 10)
                        .foregroundColor(.gray)
                        .cornerRadius(5)

                    Rectangle()
                        .frame(width: CGFloat(subjectDetails.progress) / 100 * 200, height: 10)
                        .foregroundColor(progressColor(progressValue: subjectDetails.progress))
                        .cornerRadius(5)
                }
                
                HStack {
                    Text("Преподаватель: ")
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text(subjectDetails.lecturerName)
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                }
                HStack {
                    Text("Кафедра: ")
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text(subjectDetails.department)
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                }
                
                HStack {
                    Text("Ресурсы: ")
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("Link")
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                }
                
                HStack {
                    Text("Расписание: ")
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("Link")
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                }

                
                VStack {
                    Text("Описание предмета")
                        .font(.custom("Porsche Next TT", size: 22).weight(.bold))
                        .foregroundColor(.black)
                    
                    Text(subjectDetails.subjectDescription)
                        .font(.custom("Porsche Next TT", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
        }
    }
}

struct SubjectDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectDetailsView(subjectDetails: subjects[3])
    }
}
