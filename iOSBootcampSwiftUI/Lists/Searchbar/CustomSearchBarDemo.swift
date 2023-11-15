//
//  CustomSearchBarDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/07/23.
//

import SwiftUI

struct CustomSearchBarDemo: View {
    @State private var city: String = ""

       var body: some View {
           NavigationView {
               VStack {
                   SearchBarView(text: $city)
                       .searchable(text: $city, prompt: "Search country")

                   // Resto de tu contenido aquí...
               }
               .navigationTitle("Búsqueda de Ciudad")
           }
       }
}

struct CustomSearchBarDemo_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBarDemo()
    }
}
