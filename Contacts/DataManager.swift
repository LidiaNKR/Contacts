//
//  DataManager.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 08.04.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Bruce", "John", "Steven",
        "Aaron", "Tim", "Allan",
        "Sharon", "Ted", "Carl", "Nicola"
    ]
    let surnames = [
        "Butler", "Smith", "Black",
        "Robertson", "Murphy", "Williams",
        "Isaacson", "Jankin", "Pennyworth", "Dow"
    ]
    let phones = [
        "11111111", "22222222", "33333333",
        "44444444", "55555555", "66666666",
        "77777777", "88888888", "99999999", "00000000"
    ]
    let emails = [
        "111@mail.ru", "222@mail.ru", "333@mail.ru",
        "444@mail.ru", "555@mail.ru", "666@mail.ru",
        "777@mail.ru", "888@mail.ru", "999@mail.ru",
        "000@mail.ru"
    ]

private init() {}

}
