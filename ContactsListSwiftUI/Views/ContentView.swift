//
//  ContentView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsListView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            ContactsListWithInfoView()
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
