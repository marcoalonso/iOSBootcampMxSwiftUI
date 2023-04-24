//
//  AlertsDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
// Mostrar 3 diferentes alertas y mandarlas llamar en un caso u otro

import SwiftUI

struct AlertsDemo: View {
    
    @State private var alerta1 = false
    @State private var alerta2 = false
    @State private var alerta3 = false

    
    
    var body: some View {
        VStack {
            Button("Mostrar alerta 1") {
                alerta1 = true
            }
            Button("Mostrar alerta 2") {
                alerta2 = true
            }
            Button("Mostrar alerta 3") {
                alerta3 = true
            }
        }
        .alert(isPresented: Binding(
            get: { alerta1 || alerta2 || alerta3 },
            set: { alerta1 = $0; alerta2 = $0; alerta3 = $0 })
        ) {
            alerta()
        }
    }
    
    // MARK:  Functions
    func alerta() -> Alert {
        if alerta1 {
            return Alert(title: Text("Alerta 1"), message: Text("¡Esto es la alerta 1!"), dismissButton: .default(Text("OK")))
        } else if alerta2 {
            return Alert(title: Text("Alerta 2"), message: Text("¡Esto es la alerta 2!"), dismissButton: .default(Text("OK")))
        } else if alerta3 {
            return Alert(title: Text("Alerta 3"), message: Text("¡Esto es la alerta 3!"), dismissButton: .default(Text("OK")))
        }
        
        // Si ninguna alerta está activa, se devuelve una alerta vacía
        return Alert(title: Text("Error"), message: Text("No se puede mostrar la alerta."), dismissButton: .default(Text("OK")))
    }
}

struct AlertsDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertsDemo()
    }
}
