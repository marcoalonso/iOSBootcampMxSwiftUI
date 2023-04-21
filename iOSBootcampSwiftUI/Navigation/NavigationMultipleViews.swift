//
//  NavigationMultipleViews.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct NavigationMultipleViews: View {
    @State private var navigationLinkIsActive = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Segunda pantalla")
                }
                
                
                NavigationLink(destination: ThirdView()) {
                    Text("Tercera pantalla")
                }
                
            }
            .navigationTitle("Navegacion Multiple")
        }
    }
}

struct NavigationMultipleViews_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMultipleViews()
    }
}
