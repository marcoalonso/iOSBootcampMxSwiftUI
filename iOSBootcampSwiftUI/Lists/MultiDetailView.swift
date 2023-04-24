//
//  MultiDetailView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI

struct MultiDetailView: View {
    let itemName: String
    let itemType: String
    
    
    var body: some View {
        List {
            Section(header: Text("Fruta o Verdura")) {
                Text("Nombre: \(itemName)")
                Text("Tipo: \(itemType)")
            }
        }
        .listStyle(.grouped)
        .navigationTitle(itemName)
    }
}

struct MultiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MultiDetailView(itemName: "Mango", itemType: "Fruit")
    }
}
