//
//  ObservedObjectDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import SwiftUI

///Se crea un objeto desde otra clase y se puede modificar en esta clase y en otras vistas y se puede reiniciar cuando se cambia de vista
///
struct ObservedObjectDemo: View {
/// - *   ObservedObject * Se puede usar en múltiples vistas de manera infdividual y se reinicia cuando la vista se inyecta en otra vista 
    @ObservedObject var contadorModelo = ModeloDemo()
    
    var body: some View {
        VStack {
            Text("Esta variable 'contador' se crea a partir de un Modelo que esta en otra clase que adopte el protocolo ObservableObject, y se declara como Published ")
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
            Text("Contador \(contadorModelo.contador)")
                .font(.title)
                .padding()
            
            Button {
                contadorModelo.contador += 1
            } label: {
                Label("Sumar", systemImage: "plus")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(20)
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
        }
    }
}

struct ObservedObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectDemo()
    }
}
