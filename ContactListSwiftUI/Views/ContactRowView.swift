//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContactRowView: View {
    
    let contact: [Person]
    
    var body: some View {
        Text("\(contact.count)")
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contact: Person.getContactList())
    }
}
