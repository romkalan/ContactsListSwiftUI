//
//  NumberListView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct NumberListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
                    CommunicationMethodView(
                        imageName: "phone",
                        communication: person.phoneNumber
                    )
                    CommunicationMethodView(
                        imageName: "tray",
                        communication: person.email
                    )
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct NumberListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView(persons: Person.getContactList())
    }
}
