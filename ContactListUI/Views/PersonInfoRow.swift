//
//  PersonInformationRow.swift
//  ContactListUI
//
//  Created by Влад Руденко on 28.06.2024.
//

import SwiftUI

struct PersonInfoRow: View {
    let image: String
    let person: Person
    
    var body: some View {
            HStack {
                Image(systemName: image)
                    .foregroundStyle(Color.blue)
                Text(chooseInfo())
                Spacer()
        }
            .padding()
    }
    
    func chooseInfo() -> String {
        if image == PersonInfoImage.phone.imageName {
            return person.telephoneNumber
        } else {
            return person.email
        }
    }
}

#Preview {
    PersonInfoRow(image: "phone.fill", person: Person.makeRandonPerson())
}
