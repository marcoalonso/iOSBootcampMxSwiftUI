//
//  NavigationButtonClick.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/03/23.
//

import SwiftUI

struct NavigationButtonClick: View {
    
    @State private var isActive : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(isActive: $isActive) {
                    DetailView(alumno: "Marco")
                } label: {
                    Button("Go to detail View") {
                        isActive = true
                    }
                }

            }
        }
    }
}

struct NavigationButtonClick_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonClick()
    }
}
