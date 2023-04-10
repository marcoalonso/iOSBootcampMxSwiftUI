//
//  SearchItemsList.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 10/04/23.
//

import SwiftUI

struct Place : Identifiable {
    let id = UUID()
    let name: String
    let photo: String
}

func getPlaces() -> [Place] {
    return [
        Place(name: "tailandia", photo: "tailandia"),
        Place(name: "hungria", photo: "hungria"),
        Place(name: "belgica", photo: "belgica"),
        Place(name: "noruega", photo: "noruega"),
        Place(name: "libano", photo: "libano"),
        Place(name: "china", photo: "china"),
        Place(name: "españa", photo: "espana"),
        Place(name: "holanda", photo: "holanda"),
    ]
}

struct SearchItemsList: View {
    @State private var places = getPlaces()
    @State private var search: String = ""
    
    var body: some View {
        
        NavigationView {
            List(places) { place in
                HStack(alignment: .top, spacing: 10.0) {
                    Image(place.photo)
                        .resizable()
                        .frame(maxWidth: 140, maxHeight: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .padding(.leading, 10)
                    Text(place.name)
                        .font(.title)
                }
                .swipeActions(edge: .leading) {
                    Button {
                        print("Delete")
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }.tint(.brown)
                }
                .swipeActions(edge: .trailing) {
                    Button {
                        print("Add Favorite")
                    } label: {
                        Label("Favorite", systemImage: "heart")
                    }.tint(.red)
                }
            }.listStyle(.grouped)
                .searchable(text: $search)
                .onChange(of: search, perform: { value in
                    if !value.isEmpty && value.count >= 1 {
                         places = places.filter {
                             $0.name.lowercased().hasPrefix(value.lowercased())
                        }
                    } else {
                        places = getPlaces()
                    }
                })
            
            
                .navigationTitle("Places")
        }
    }
}

struct SearchItemsList_Previews: PreviewProvider {
    static var previews: some View {
        SearchItemsList()
    }
}
