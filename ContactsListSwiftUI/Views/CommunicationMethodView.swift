//
//  CommunicationMethodView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct CommunicationMethodView: View {
    let imageName: String
    let communication: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(communication)
        }
    }
}

struct CommunicationMethodView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationMethodView(
            imageName: "tray",
            communication: "aaa@rambler.ru"
        )
    }
}
