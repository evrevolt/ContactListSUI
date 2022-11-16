//
//  PersonRowView.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import SwiftUI

struct PersonRowView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text(person.fullName)
        }
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: Person.getContactList().randomElement()!)
    }
}
