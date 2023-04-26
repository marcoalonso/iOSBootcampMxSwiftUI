//
//  FullScreenCoverDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI

struct FullScreenCoverDemo: View {
    @State private var showModal = false
    @State private var selectedColor = "Rojo"
    
    var body: some View {
        VStack {
            
            switch selectedColor {
            case "Rojo":
                Text("Color seleccionado: \(selectedColor)")
                    .foregroundColor(.white)
                    .background(Color.red)
                
            case "Verde":
                Text("Color seleccionado: \(selectedColor)")
                    .foregroundColor(.white)
                    .background(Color.red)
                
            case "Azul":
                Text("Color seleccionado: \(selectedColor)")
                    .foregroundColor(.white)
                    .background(Color.blue)
            default:
                Text("Color seleccionado: \(selectedColor)")
                    .foregroundColor(.black)
            }
            
            Button("Seleccionar color") {
                showModal = true
            }
            .fullScreenCover(isPresented: $showModal, content: {
                ColorDetailView(selectedColor: $selectedColor)
            })
        }
    }
}

struct FullScreenCoverDemo_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCoverDemo()
    }
}
