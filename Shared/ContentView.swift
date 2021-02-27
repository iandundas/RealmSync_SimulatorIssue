//
//  ContentView.swift
//  Shared
//
//  Created by Ian Dundas on 26/02/2021.
//

import SwiftUI
import RealmSwift

let realmApp = RealmSwift.App(id: "tacksdev-ldkft")

struct ContentView: View {

    var body: some View {
        Button("Login..") {
            realmApp.login(credentials: .anonymous) { result in
                print("Result: \(result)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
