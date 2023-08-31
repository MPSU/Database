//
//  Extensions.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 20.07.2023.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.index(after: hex.startIndex)

        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

extension SubjectView {
    func progressColor(progressValue: Double) -> Color {
        switch progressValue {
            case 0...20:
                return Color(hex: "#F20505")
            case 21...40:
                return Color(hex: "#F9957F")
            case 41...60:
                return Color(hex: "#FFE2A0")
            case 61...80:
                return Color(hex: "#C9FFA0")
            default:
                return Color(hex: "#A0ECFF")
        }
    }
}

extension SubjectDetailsView {
    func progressColor(progressValue: Double) -> Color {
        switch progressValue {
            case 0...20:
                return Color(hex: "#F20505")
            case 21...40:
                return Color(hex: "#F9957F")
            case 41...60:
                return Color(hex: "#FFE2A0")
            case 61...80:
                return Color(hex: "#C9FFA0")
            default:
                return Color(hex: "#A0ECFF")
        }
    }
}

let topYellow: Color =  Color(hex: "#F5C652")
let bottomYellow: Color = Color(hex: "#CF9C25")

let mainGray: Color = Color(hex: "#F6F5F8")

let bgYellow = LinearGradient(colors: [topYellow, bottomYellow],
                                    startPoint: .top,
                                    endPoint: .bottom)
