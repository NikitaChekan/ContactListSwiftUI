//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContactRowView: View {
    
    let content: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: "\(image)")
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.blue)
            Text(content)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(
            content: Person.getContactList().randomElement()?.email ?? "",
            image: "paperplane.fill"
        )
    }
}
