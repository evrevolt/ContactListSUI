//
//  ContactDetailsInfo.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import SwiftUI

struct ContactDetailsInfo: View {
    
    let person: Person
    
    var body: some View {
        
        NavigationView {
            VStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 250, height: 250)
                Spacer()
                
                HStack {
                    Image(systemName: "phone")
                    Text(person.phoneNumber)
                }
                HStack {
                    Image(systemName: "mail")
                    Text(person.email)
                }
                Spacer()
            }
            .navigationTitle(person.fullName)
        }
        .font(.title)
        .foregroundColor(.black)
        .padding()
    }
}

struct ContactDetailsInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsInfo(person: Person.getContactList().randomElement()!)
    }
}
