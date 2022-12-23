//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person = Person.getContactList()
    
    var body: some View {
        Text("\(person.count)")
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView()
    }
}
