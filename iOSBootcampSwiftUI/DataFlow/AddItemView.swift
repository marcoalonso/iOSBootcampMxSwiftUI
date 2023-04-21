//
//  AddItemView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentatioMode
    
    @Binding var name: String
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter name: ", text: $name)
                    .font(.title)
                    .foregroundColor(.blue)
                
                HStack {
                    Spacer()
                    
                    Button("Submit") {
                        presentatioMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }
            }
            .navigationTitle("Add Item")
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(name: .constant("Marco Alonso"))
    }
}
