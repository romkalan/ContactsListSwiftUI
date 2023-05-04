//
//  ContactsListView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct ContactsListView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Text(person.fullName)
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView()
    }
}
