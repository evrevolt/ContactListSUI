//
//  PersonRowView.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import SwiftUI

struct PersonRowView: View {
    
    @State private var isPresented = false
    
    let person: Person
    
    var body: some View {
        
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text(person.fullName)
            }
            .sheet(isPresented: $isPresented) {
                ContactDetailsInfo(person: person)
            }
        }
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: Person.getContactList().randomElement()!)
    }
}
