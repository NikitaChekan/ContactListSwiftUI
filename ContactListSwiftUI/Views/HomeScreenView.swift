//
//  HomeScreenView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct HomeScreenView: View {
    
    private var contactList = Person.getContactList()
    
    var body: some View {
        Text("Contact List!")
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
