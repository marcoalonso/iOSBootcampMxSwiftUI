//
//  BindingStringDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 29/03/23.
//

import SwiftUI

struct BindingStringDemo: View {
    @Binding var text: String

       var body: some View {
           VStack {
               Text(text)
               TextField("Enter text", text: $text)
           }
       }
}

struct BindingStringDemo_Previews: PreviewProvider {
    static var previews: some View {
        let text = Binding<String>(
            get: { "Ejemplo de un texto" },
            set: { _ in }
        )
        return BindingStringDemo(text: text)
    }
    
}
