//
//  ModalSheet.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import SwiftUI

struct ModalSheet: View {
    @State private var show = false
    @State private var dismissed: Bool = false
    
    var body: some View {
        VStack {
            Button("Mostrar Nueva ventana") {
                show.toggle()
            }
            Text(dismissed ? "Dismissed" : "")
                .font(.system(size: 33))
            
            
        }.sheet(isPresented: $show, onDismiss: {
            dismissed = true
        }) {
            ModalWindow()
        }
    }
}

struct ModalSheet_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheet()
    }
}
