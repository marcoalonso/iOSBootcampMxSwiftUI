//
//  BacgroundDemo1.swift
//  BackgroundsDemo
//
//  Created by Marco Alonso Rodriguez on 18/06/23.
//

import SwiftUI

struct BacgroundDemo1: View {
    var body: some View {
        VStack {
            
            Spacer()
                .frame(maxHeight: 50)
            
            Text("Option 1")
                .font(.largeTitle)
            
            Image("astro")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(12)
            
            Spacer()
        }.padding(.top, 50)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple, Color.white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        ).edgesIgnoringSafeArea(.all)
            
    }
}

struct BacgroundDemo1_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundDemo1()
    }
}
