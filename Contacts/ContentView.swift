//
//  ContentView.swift
//  Contacts
//
//  Created by Лидия Ладанюк on 08.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsCells(contacts: Person.generateContacts())
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ContactsSections(contacts: Person.generateContacts())
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
