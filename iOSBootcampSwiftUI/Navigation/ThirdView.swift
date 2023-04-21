//
//  ThirdView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
            
            Text("Tercera Pantalla")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
