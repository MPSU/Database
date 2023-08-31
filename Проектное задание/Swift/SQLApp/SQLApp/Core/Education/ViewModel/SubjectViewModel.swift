//
//  SubjectViewModel.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 20.07.2023.
//

import Foundation
import SwiftUI

final class SubjectViewModel {
    
    func progressColor(progressValue: Double) -> Color {
        switch progressValue {
            case 0...20:
                return Color(hex: "#FFA0A0")
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
