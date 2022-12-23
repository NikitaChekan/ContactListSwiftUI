//
//  HomeScreenView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct HomeScreenView: View {
    
    let contactList = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(contactList) { contact in
                NavigationLink(
                    contact.fullname,
                    destination: ContactDetailsView(person: contact)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
