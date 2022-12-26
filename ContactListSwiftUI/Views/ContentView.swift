//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            HomeScreenView(contactList: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersListView(numbersList: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
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
