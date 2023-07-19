//
//  ModeloDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import Combine

class ModeloDemo : ObservableObject {
    @Published var contador = 0
    
    ///Esta variable se utilizará solo en la vista ejemplo de ObservableObjectDemo
    @Published var name = ""
}
