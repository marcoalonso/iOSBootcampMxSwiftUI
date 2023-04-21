//
//  MultipleNavigationValueTypes.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct Movie: Hashable {
    let name: String
    let year: Int
}

struct MultipleNavigationValueTypes: View {
    var body: some View {
     
        NavigationStack {
            VStack {
                NavigationLink("Link String", value: "Hola Mundo")
                NavigationLink("Link Int", value: 100)
                NavigationLink("Link Struct", value: Movie(name: "Thor", year: 2022))
                NavigationLink("Link Double", value: 0.0)
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Second View")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                        .padding()
                        .background(
                            Color.blue
                        )
                        .cornerRadius(12)
                        .padding()
                        .shadow(radius: 12)
                        
                }

            }
            .navigationDestination(for: String.self) { stringValue in
                Text(stringValue)
            }
            .navigationDestination(for: Int.self) { intValue in
                Text("Apuesta: \(intValue)")
            }
            .navigationDestination(for: Movie.self) { movie in
                Text(movie.name)
            }
            .navigationDestination(for: Double.self) { apuesta in
                ThirdView()
            }
        }
    }
}

struct MultipleNavigationValueTypes_Previews: PreviewProvider {
    static var previews: some View {
        MultipleNavigationValueTypes()
    }
}
