//
//  DetailSheetView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 25/04/23.
//

import SwiftUI

struct DetailSheetView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var mostrarAlerta = false
    
    var body: some View {
        VStack {
            
            
            
            Text("Detail")
                .font(.largeTitle)
            
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            
            
            
            Spacer()
        }
        .alert(isPresented: $mostrarAlerta, content: {
            Alert(
                title: Text("¡Hola!"),
                message: Text("Visita iOS Bootcamp Mx"),
                primaryButton: .default(Text("Aceptar")) {
                    //Aceptar Button
                },
                secondaryButton: .default(Text("Salir")) {
                    //Salir
                }
            )
        })
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Title Demo")
                    .font(.title2)
            }
            
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Back") {
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Add Item") {
                    mostrarAlerta = true
                }
            }
        }
    }
}

struct DetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailSheetView()
        }
    }
}
