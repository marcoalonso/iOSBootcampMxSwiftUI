//
//  SecondView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea(.all)
            
            Text("Second View")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .shadow(radius: 10)
        }
        
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
