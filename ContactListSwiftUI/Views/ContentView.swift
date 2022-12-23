//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(Color.gray.opacity(0.1), for: .tabBar)
            NumbersListView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(Color.gray.opacity(0.1), for: .tabBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
