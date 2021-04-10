//
//  ContactsSectionsRow.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 10.04.2021.
//

import SwiftUI

struct ContactsSectionsRow: View {
    
    let contacts: Person
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contacts.phoneNumber)")
            }
            .frame(width: 300, height: 30, alignment: .leading)
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text("\(contacts.email)")
            }
            .frame(width: 300, height: 30, alignment: .leading)
        }
    }
}

struct ContactsSectionsRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactsSectionsRow(contacts: Person.generateContacts())
    }
}
