//
//  StateObjectDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 18/07/23.
//

import SwiftUI

struct StateObjectDemo: View {
    /// - *   StateObject * Se puede usar en múltiples vistas de manera infdividual y se reinicia cuando la vista se inyecta en otra vista
        @StateObject var contadorModelo = ModeloDemo()
        
    var body: some View {
        NavigationView {
            VStack {
                Text("Esta variable 'contador' se crea a partir de un Modelo que esta en otra clase que adopte el protocolo ObservableObject, y se declara como Published, a diferencia de ObservedObject, StateObject si se sale de la vista se destruye la referencia al ViewModel y se vuelve a crear.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Contador \(contadorModelo.contador)")
                    .font(.title)
                    .padding()
                
                
                Text("ObservedObject generalmente se usan cuando los datos se almacenan fuera de la vista, por lo que cuando se vuelve a dibujar la vista, no perderemos los datos. StateObject generalmente se usan cuando esos datos deben almacenarse dentro de la vista")
                    .padding(.horizontal)
                
                Link(destination: URL(string: "https://www.avanderlee.com/swiftui/stateobject-observedobject-differences/")!) {
                    Text("Conocer Más")
                        .foregroundColor(.blue)
                        .font(.title)
                }
                
                
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
}

struct StateObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectDemo()
    }
}
