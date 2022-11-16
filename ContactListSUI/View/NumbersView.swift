//
//  NumbersView.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import SwiftUI

struct NumbersView: View {
    
    var persons: [Person]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons) { person in
                    Section(person.fullName) {
                        PersonView(person: person)
                    }
                }
                
            }
            .navigationTitle("Contact List")
        }
        
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
