//
//  ContactListView.swift
//  ContactListUI
//
//  Created by Влад Руденко on 27.06.2024.
//

import SwiftUI

struct ContactListView: View {
    let contactList: [Person]
    
    var body: some View {
        List(contactList) { person in
            NavigationLink(destination: ContactDetailView(person: person)) {
                Text(person.fullName)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactListView(contactList: Person.makeRandomList())
}
