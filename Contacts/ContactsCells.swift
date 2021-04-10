//
//  ContactsCells.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 08.04.2021.
//

import SwiftUI

struct ContactsCells: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(
                    destination: ContactDetails(
                        isPresented: .constant(false),
                        contacts: contact)
                ) {
                    ContactRow(contacts: contact)
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}


struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsCells(contacts: Person.generateContacts())
    }
}
