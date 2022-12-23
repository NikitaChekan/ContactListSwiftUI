//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContactRowView: View {
    
    let email: String
    let phone: String
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            Text(phone)
            Text(email)
        }
        .padding()
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(
            email: Person.getContactList().randomElement()?.email ?? "",
            phone: Person.getContactList().randomElement()?.phone ?? ""
        )
    }
}
