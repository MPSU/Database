//
//  EducationView.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 20.07.2023.
//

import SwiftUI

struct EducationView: View {
    @State private var selectedSubject: SubjectDetailsModel?
    
    var body: some View {
        HStack {
            VStack{
                SubjectView(progressValue: 99,subjectTitle: "iOS Development")
                    .onTapGesture {
                        selectedSubject = subjects[0]
                    }
                SubjectView(progressValue: 68,subjectTitle: "Java Development")
                    .onTapGesture {
                        selectedSubject = subjects[1]
                    }
                SubjectView(progressValue: 64,subjectTitle: "Web Development")
                    .onTapGesture {
                        selectedSubject = subjects[2]
                    }
                SubjectView(progressValue: 58,subjectTitle: "Backend Python Development")
                    .onTapGesture {
                        selectedSubject = subjects[3]
                    }
                SubjectView(progressValue: 44,subjectTitle: "Linux basics")
                    .onTapGesture {
                        selectedSubject = subjects[4]
                    }
                SubjectView(progressValue: 37,subjectTitle: "Linear Algebra")
                    .onTapGesture {
                        selectedSubject = subjects[5]
                    }
                SubjectView(progressValue: 89,subjectTitle: "Advanced C++")
                    .onTapGesture {
                        selectedSubject = subjects[6]
                    }
            }
            .frame(maxWidth: .infinity)
            .padding()
            
            SubjectDetailsView(subjectDetails: selectedSubject ?? subjects[0])
                .padding()
                .frame(maxWidth: .infinity)
        }
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
