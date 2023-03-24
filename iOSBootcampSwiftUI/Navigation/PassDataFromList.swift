//
//  PassDataFromList.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import SwiftUI

struct PassDataFromList: View {
    
    let alumnos = ["Alonso", "Luis", "Daniel", "Ana", "Marco", "Santiago"]
    
    var body: some View {
        NavigationView {
            List(alumnos, id: \.self) { alumno in
                NavigationLink(
                    destination: DetailView(alumno: alumno),
                 label: {
                    Text(alumno)
                })

            }
        }
    }
}

struct PassDataFromList_Previews: PreviewProvider {
    static var previews: some View {
        PassDataFromList()
    }
}
