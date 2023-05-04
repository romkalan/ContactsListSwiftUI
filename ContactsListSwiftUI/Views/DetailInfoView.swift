//
//  DetailInfoView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct DetailInfoView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(person.fullName)
                .font(.largeTitle)
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            HStack {
                Image(systemName: Contacts.phone.rawValue)
                Text(person.phoneNumber)
            }
            HStack {
                Image(systemName: Contacts.email.rawValue)
                Text(person.email)
            }
        }
        .listStyle(.plain)
        .padding()
    }
}

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(person: Person(id: 1, name: "Albert", surname: "Johnons", email: "ttt@mail.ru", phoneNumber: "4221"))
    }
}
