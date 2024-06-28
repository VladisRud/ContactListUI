//
//  Persons.swift
//  ContactListUI
//
//  Created by Влад Руденко on 27.06.2024.
//

import Foundation

enum PersonInfoImage {
    case phone
    case email
    
    var imageName: String {
        switch self {
        case .phone:
            "phone"
        case .email:
            "tray"
        }
    }
}

struct Person: Identifiable {
    var id: Int
    var firstName: String
    var secondName: String
    var telephoneNumber: String
    var email: String
    
    var fullName: String {
        firstName + " " + secondName
    }
    
    static func makeRandonPerson() -> Person {
        let firstNames = DataStore.shared.firstNameList.randomElement()
        let secondNames = DataStore.shared.secondNameList.randomElement()
        let phoneNumbers = DataStore.shared.phoneNumberList.randomElement()
        let emails = DataStore.shared.emailList.randomElement()
        
        let person = Person(
            id: Int.random(in: 1...10000),
            firstName: firstNames ?? "first name",
            secondName: secondNames ?? "second name",
            telephoneNumber: phoneNumbers ?? "+0",
            email: emails ?? "@"
        )
        
        return person
    }
    
    static func makeRandomList() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataStore.shared.firstNameList.shuffled()
        let secondNames = DataStore.shared.secondNameList.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumberList.shuffled()
        let emails = DataStore.shared.emailList.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                id: index + 1,
                firstName: firstNames[index],
                secondName: secondNames[index],
                telephoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
}
