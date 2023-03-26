//
//  ModalWindow.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import SwiftUI

struct ModalWindow: View {
    
    @Environment(\.presentationMode) var back
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack( alignment: .leading) {
                
                Spacer()
                
                Button {
                    back.wrappedValue.dismiss()
                } label: {
                    Text("Cerrar")
                        .foregroundColor(.blue)
                        .font(.system(size: 32))
                        .padding()
                        
                }.background {
                    Color.white
                }
                .cornerRadius(12)
                .padding()

                Spacer()
            }
        }
    }
}

struct ModalWindow_Previews: PreviewProvider {
    static var previews: some View {
        ModalWindow()
    }
}
