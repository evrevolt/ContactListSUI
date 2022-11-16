//
//  PersonView.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
            Text(person.phoneNumber)
        }
        HStack {
            Image(systemName: "mail")
            Text(person.email)
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.getContactList().randomElement()!)
    }
}
