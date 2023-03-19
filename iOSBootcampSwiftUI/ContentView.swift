//
//  ContentView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    
    typealias Options = [(AnyView, String)]
    
    var shapes: Options = [
    (AnyView(Shapes()), "Shapes"),
    (AnyView(Animation()), "Animation"),
    (AnyView(Icons()), "Icons"),
    (AnyView(Icons()), "Backgroud/Overlays"),
    ]
    
    
    var lists: Options = [
    (AnyView(Colors()), "Colors"),
    (AnyView(Buttons()), "Buttons"),
    ]
    
    var general: Options = [
        (AnyView(Images()), "Images"),
        (AnyView(Grids()), "Grids"),
    ]
    
    
    var body: some View {
    
        NavigationView {
            List {
                // MARK:  General
                ForEach(general, id: \.1) { current in
                    
                    NavigationLink(destination: current.0
                                   , label: {
                        VStack(alignment: .leading) {
                            Text(current.1)
                                .font(.title2)
                        }
                    })
                }
                
                // MARK:  Shapes
                Section(header: Text("Shapes")) {
                    ForEach(shapes, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.title2)
                            }
                        })
                    }
                    
                }
                
                // MARK:  Lists
                Section(header: Text("Lists")) {
                    ForEach(lists, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.title3)
                            }
                        })
                    }
                    
                }
                
            }//List
            .listStyle(GroupedListStyle())
            .navigationTitle("iOS Bootcamp SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
