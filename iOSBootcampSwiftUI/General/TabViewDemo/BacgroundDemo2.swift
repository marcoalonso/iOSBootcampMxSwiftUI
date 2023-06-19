//
//  BacgroundDemo2.swift
//  BackgroundsDemo
//
//  Created by Marco Alonso Rodriguez on 18/06/23.
//

import SwiftUI

struct BacgroundDemo2: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple, Color.red]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Option 2")
                    .font(.largeTitle)
                
                Image("bio")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(12)
                
                Spacer()
            }
        }
        
        
    }
}

struct BacgroundDemo2_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundDemo2()
    }
}
