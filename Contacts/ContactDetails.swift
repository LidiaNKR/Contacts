//
//  ContactDetails.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 09.04.2021.
//

import SwiftUI

struct ContactDetails: View {
    
    @Binding var isPresented: Bool
    let contacts: Person
    
    var body: some View {
        List{
            HStack {
                Image (systemName: "person.fill")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .foregroundColor(.black)
            }
            .frame(width: 300, alignment: .center)
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("Tel: \(contacts.phoneNumber)")
            }
            .frame(width: 300, height: 30, alignment: .leading)
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text("Email: \(contacts.email)")
            }
            .frame(width: 300, height: 30, alignment: .leading)
        }
        .navigationBarTitle("\(contacts.name) \(contacts.surname)")
        .listStyle(GroupedListStyle())
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(isPresented: .constant(false),
                       contacts: Person.getContactList(0))
    }
}
