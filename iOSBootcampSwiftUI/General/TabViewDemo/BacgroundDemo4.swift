//
//  BacgroundDemo4.swift
//  BackgroundsDemo
//
//  Created by Marco Alonso Rodriguez on 18/06/23.
//

import SwiftUI

struct BacgroundDemo4: View {
    var body: some View {
        VStack {
            Text("Option 4")
                .font(.largeTitle)
            
            Text("Using Vstack with size of full screen and .background modifier")
                .font(.body)
            
            Image("estrellas")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(12)
            
            Spacer()
        }.padding(.top, 60)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow, Color.orange]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct BacgroundDemo4_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundDemo4()
    }
}
