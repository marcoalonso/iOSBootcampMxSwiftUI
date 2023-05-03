//
//  SegmentedControlDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 02/05/23.
//

import SwiftUI

struct SegmentedControlDemo: View {
    
    @State private var seleccion = 0
    
    let opciones = ["Hamburguesa", "Pizza", "HotDog","Tacos","Sushi","Spagetti"]
    
    var body: some View {
        VStack {
            Text("Segmented Controls")
                .font(.largeTitle)
            VStack {
                Text("menu style")
                    .font(.largeTitle)
                Picker("", selection: $seleccion) {
                    ForEach(0 ..< opciones.count) { indice in
                        Text(self.opciones[indice])
                    }
                }.pickerStyle(.menu)
                .padding(12)
                
            }
            .frame(maxWidth: .infinity)
            .background(
                Color.red
            )
            .cornerRadius(12)
            .padding(12)
            
            VStack {
                Text("segmented style")
                    .font(.largeTitle)
                Picker(selection: $seleccion) {
                    ForEach(0 ..< opciones.count) { indice in
                        Text(self.opciones[indice])
                    }
                } label: {
                    EmptyView()
                }
                .pickerStyle(.segmented)
                .padding(12)

            }
            
            .background(
                Color.blue
            )
            .cornerRadius(12)
            
            // MARK:  wheel
            VStack(spacing: 10.0) {
                Text("wheel style")
                    .font(.title)
                Picker(selection: $seleccion) {
                    ForEach(0 ..< opciones.count) { indice in
                        Text(self.opciones[indice])
                    }
                } label: {
                    EmptyView()
                }.pickerStyle(.wheel)
                    

            }
            .frame(maxHeight: 180)
            .background(Color.gray)
            .cornerRadius(12)
            
            
            
        }.padding(12)
    }
}

struct SegmentedControlDemo_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlDemo()
    }
}
