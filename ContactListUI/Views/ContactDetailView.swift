//
//  ContactDetailView.swift
//  ContactListUI
//
//  Created by Влад Руденко on 28.06.2024.
//

import SwiftUI

struct ContactDetailView: View {
    let person: Person
    
    var body: some View {
        List {
            VStack(alignment: .center) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                PersonInfoRow(image: PersonInfoImage.phone.imageName, person: person)
                PersonInfoRow(image: PersonInfoImage.email.imageName, person: person)
            }
            .navigationTitle("\(person.fullName)")
        }
    }
}

#Preview {
    ContactDetailView(person: Person.makeRandonPerson())
}
