//
//  MagnifyView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
//

import SwiftUI

struct MagnifyView: View {
    
    @GestureState private var zoomFactor: CGFloat = 1.0
    @State private var currentScale: CGFloat = 1.0
    
    
    
    var magnification: some Gesture {
        return MagnificationGesture()
            .updating($zoomFactor) { value, scale, transaction in
                scale = value
            }.onEnded { value in
                currentScale *= value
            }
    }
    
    var body: some View {
        VStack {
            Image("seat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(currentScale * zoomFactor)
                .gesture(magnification)
           
            
        }
    }
}

struct MagnifyView_Previews: PreviewProvider {
    static var previews: some View {
        MagnifyView()
    }
}
