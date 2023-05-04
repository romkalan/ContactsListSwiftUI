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
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Spacer()
                }
                PersonalContactView(
                    imageName: "phone",
                    color: .blue,
                    communication: person.phoneNumber
                )
                PersonalContactView(
                    imageName: "tray",
                    color: .blue,
                    communication: person.email
                )
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(person: Person(id: 1, name: "Albert", surname: "Johnons", email: "ttt@mail.ru", phoneNumber: "4221"))
    }
}

struct PersonalContactView: View {
    let imageName: String
    let color: Color
    let communication: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(color)
            Text(communication)
        }
    }
}
