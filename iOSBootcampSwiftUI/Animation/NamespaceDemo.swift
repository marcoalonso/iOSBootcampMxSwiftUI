//
//  Namespace.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
//

import SwiftUI

struct NamespaceDemo: View {
    
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(maxWidth: .infinity, maxHeight: 400)
            }
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }
    }
}

