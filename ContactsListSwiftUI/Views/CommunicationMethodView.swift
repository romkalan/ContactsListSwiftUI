//
//  CommunicationMethodView.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

import SwiftUI

struct CommunicationMethodView: View {
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

struct CommunicationMethodView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationMethodView(
            imageName: "tray",
            color: .green,
            communication: "aaa@rambler.ru"
        )
    }
}
