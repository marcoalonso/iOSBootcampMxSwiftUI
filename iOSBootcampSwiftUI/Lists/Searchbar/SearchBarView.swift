//
//  SearchBarView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/07/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String

        var body: some View {
            HStack {
                TextField("Buscar ciudad", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                if !text.isEmpty {
                    Button(action: {
                        text = "" // Limpiar el texto al presionar el botón de búsqueda del teclado
                        hideKeyboard()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.secondary)
                    }
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                }
            }
            .onChange(of: text) { newCity in
                // Aquí puedes realizar alguna acción adicional con el nuevo valor de la ciudad
            }
        }

    // Función para ocultar el teclado
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant(""))
    }
}
