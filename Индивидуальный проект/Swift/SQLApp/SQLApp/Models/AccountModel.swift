//
//  AccountModel.swift
//  SQLApp
//
//  Created by Alexander Sorokin on 23.07.2023.
//

import Foundation

struct AccountModel {
    
    /// Модель из
    /// Базы данных PSQL
    /// Все значения представлены строками
    
    /// Номер студенческого / пропуска
    let studentNumber: String
    
    /// Фамилия
    let surname: String
    
    /// Имя
    let name: String
    
    /// Отчество
    let middleName: String?
    
    /// Группа
    let group: String
    
    /// Дата рождения
    let dateOfBirth: String
    
    /// электронная почта
    let email: String
}
