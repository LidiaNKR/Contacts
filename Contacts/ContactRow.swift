//
//  ContactRow.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 08.04.2021.
//

import SwiftUI

struct ContactRow: View {
    
    let contacts: Person
    
    var body: some View {
        Text("\(contacts.name) \(contacts.surname)")
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contacts: Person.getContactList(0))
    }
}
