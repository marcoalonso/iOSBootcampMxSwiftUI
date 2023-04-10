//
//  GeometryReaderDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 03/04/23.
//

import SwiftUI

struct GeometryReaderDemo: View {
    let items = ["Elemento 1", "Elemento 2"]
    
    var body: some View {
            GeometryReader { proxy in
                NavigationView {
                    List(items, id: \.self) { item in
                        VStack {
                            Text("\(item) width: \(proxy.size.width)")
                            Text("\(item) height: \(proxy.size.height)")
                            Text("Coordinates local: \(proxy.frame(in: .local).debugDescription)")
                            Text("Coordinates global: \(proxy.frame(in: .global).debugDescription)")
                        }
                            .frame(width: proxy.size.width, height: proxy.size.height / (CGFloat(items.count) + 2))
                            .background(Color.red)
                    }
                    .navigationTitle("Lista con filas flexibles")
                }
            }
        }
}

struct GeometryReaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemo()
    }
}
