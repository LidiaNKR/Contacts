//
//  Person.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 08.04.2021.
//

import SwiftUI

class Person: NSObject, Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    init(recordId: Int, name: String, surname: String, email: String, phoneNumber: String) {
        self.id = recordId
        self.name = name
        self.surname = surname
        self.email = email
        self.phoneNumber = phoneNumber
        
    }
    
    static func generateContacts() -> [Person] {
        (1...10).map { getContactList($0) }
    }
    
    static func generateContacts() -> Person {
        getContactList(Int.random(in: 1...10))
    }
    
    static func getContactList(_ idx: Int) -> Person {
        
        let names = DataManager.shared.names
        let surnames = DataManager.shared.surnames
        let emails = DataManager.shared.emails
        let phones = DataManager.shared.phones
        
        let name = names[Int.random(in: 0..<names.count)]
        let surname = surnames[Int.random(in: 0..<surnames.count)]
        let email = emails[Int.random(in: 0..<emails.count)]
        let phone = phones[Int.random(in: 0..<phones.count)]
        
        
        let newContact = Person(recordId: idx, name: name, surname: surname, email: email, phoneNumber: phone)
        
        return newContact
    }
}

