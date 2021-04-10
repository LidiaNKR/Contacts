//
//  ContactsSections.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 09.04.2021.
//

import SwiftUI

struct ContactsSections: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header:
                                ContactRow(contacts: contact)) {
                        ContactsSectionsRow(contacts: contact)
                    }
                    .textCase(nil)
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContactsSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactsSections(contacts: Person.generateContacts())
    }
}
