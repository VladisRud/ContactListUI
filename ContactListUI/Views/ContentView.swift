//
//  ContentView.swift
//  ContactListUI
//
//  Created by Влад Руденко on 27.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    private let contactList = Person.makeRandomList()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactListView(contactList: contactList)
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Contacts")
                    }
                TelephoneListView(contactList: contactList
                )
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .padding()
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContentView()
}
