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
    @State private var presentDetailView = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Esta variable 'contador' se crea a partir de un Modelo que esta en otra clase que adopte el protocolo ObservableObject, y se declara como Published. Se utiliza para objetos observados que se pasan desde el exterior, como argumentos de inicialización o parámetros de enlace (@Binding). \n Cada vez que un ObservedObject cambia, SwiftUI solo actualiza las partes de la vista que dependen directamente de ese objeto observado. \n Es útil cuando quieres que una vista reaccione a cambios específicos en un objeto, sin volver a dibujar toda la vista.")
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
                
                Divider()
                VStack {
                    Text("ObservedObject generalmente se usan cuando los datos se almacenan fuera de la vista, por lo que cuando se vuelve a dibujar la vista, no perderemos los datos. StateObject generalmente se usan cuando esos datos deben almacenarse dentro de la vista")
                    
                    Text("Name: \(contadorModelo.name)")
                    TextField("Enter your name", text: $contadorModelo.name)
                        .padding(.horizontal)
                }
                .padding(10)
            }
            .sheet(isPresented: $presentDetailView, content: {
                DetailView(alumno: contadorModelo.name)
            })
            .navigationBarItems(trailing:
                                    Button(action: {
                presentDetailView.toggle()
            }, label: {
                Image(systemName: "plus")
            })
            )
        }
    }
}

struct ObservedObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectDemo()
    }
}
