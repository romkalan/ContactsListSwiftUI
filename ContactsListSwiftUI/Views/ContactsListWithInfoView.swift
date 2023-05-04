//
//  ContactsListWithInfoView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct ContactsListWithInfoView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
                    CommunicationMethodView(
                        imageName: Contacts.phone.rawValue,
                        color: .blue,
                        communication: person.phoneNumber
                    )
                    CommunicationMethodView(
                        imageName: Contacts.email.rawValue,
                        color: .blue,
                        communication: person.email
                    )
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ContactsListWithInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListWithInfoView(persons: Person.getContactList())
    }
}
