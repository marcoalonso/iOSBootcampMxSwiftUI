//
//  ColorDetailView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI

struct ColorDetailView: View {
    
    @Binding var selectedColor: String
      @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        VStack {
            Text("Detalle del color")
            
            Picker(selection: $selectedColor, label: Text("Seleccionar color")) {
                Text("Rojo").tag("Rojo")
                Text("Verde").tag("Verde")
                Text("Azul").tag("Azul")
            }
            .pickerStyle(.segmented)
            
            Button("Guardar") {
                dismiss()
            }
        }
        .padding()    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView(selectedColor: .constant("Rojo"))
    }
}
