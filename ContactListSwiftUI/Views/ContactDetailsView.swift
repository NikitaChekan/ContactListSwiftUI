//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Nikita Chekan on 22.12.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                ContactRowView(content: person.phone, image: "phone")
                ContactRowView(content: person.email, image: "square.and.pencil")
                
// Вместо создания представления ContactRowView можно было вывести строки с помощью Label как показано ниже (то же самое в Sections NumbersListView)
//                Label(person.phone, systemImage: "phone")
//                Label(person.email, systemImage: "square.and.pencil")
            }
            .navigationTitle(person.fullname)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContactList().first!)
    }
}
