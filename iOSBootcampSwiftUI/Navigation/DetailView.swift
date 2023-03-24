//
//  DetailView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import SwiftUI

struct DetailView: View {
    
    let alumno : String
    
    var body: some View {
        Text("Alumno: \(alumno)")
            .font(.title)
            .foregroundColor(.blue)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(alumno: "Marco")
    }
}
