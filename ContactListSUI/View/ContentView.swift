//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Геннадий Ведерников on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
