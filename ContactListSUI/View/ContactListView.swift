//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import SwiftUI

struct ContactListView: View {
    
    var persons: [Person]
    
    var body: some View {
        
        NavigationStack {
            
            List(persons) { person in
                PersonRowView(person: person)
            }
            .navigationTitle("Contact List")
        }
    }
}


struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
