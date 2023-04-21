//
//  PassDataFromChildToParent.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct PassDataFromChildToParent: View {
    @State private var isPresented: Bool = false
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            
            Text(name)
                .font(.largeTitle)
            
            Button {
                name = ""
                isPresented = true
            } label: {
                Text("Add Item")
            }
            
        }.sheet(isPresented: $isPresented) {
            AddItemView(name: $name)
        }

    }
}

struct PassDataFromChildToParent_Previews: PreviewProvider {
    static var previews: some View {
        PassDataFromChildToParent()
    }
}
