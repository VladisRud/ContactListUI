//
//  TelephoneListView.swift
//  ContactListUI
//
//  Created by Влад Руденко on 27.06.2024.
//

import SwiftUI

struct TelephoneListView: View {
    let contactList: [Person]
    
    var body: some View {
        List(contactList) { person in
            Section(header: Text(person.fullName)) {
                PersonInfoRow(image: PersonInfoImage.phone.imageName, person: person)
                PersonInfoRow(image: PersonInfoImage.email.imageName, person: person)
            }
        }
        .listStyle(.inset)
    }
}

#Preview {
    TelephoneListView(contactList: Person.makeRandomList())
}
