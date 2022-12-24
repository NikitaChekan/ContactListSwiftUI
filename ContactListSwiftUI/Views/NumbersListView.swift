//
//  CustomContactList.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct NumbersListView: View {
    
    let numbersList = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(numbersList) { number in
                Section(header: Text(number.fullname)) {
                    ContactRowView(content: number.phone, image: "phone")
                    ContactRowView(content: number.email, image: "square.and.pencil")
                }
            }
            .navigationTitle("Numbers List")
        }
    }
}

struct CustomContactList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView()
    }
}
