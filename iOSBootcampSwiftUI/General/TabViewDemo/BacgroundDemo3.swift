//
//  BacgroundDemo3.swift
//  BackgroundsDemo
//
//  Created by Marco Alonso Rodriguez on 18/06/23.
//

import SwiftUI

struct BacgroundDemo3: View {
    var body: some View {
        ZStack {
            
            Image("fondo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            ///Todo el contenido aqui
            VStack {
                Text("Option 3")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Text("Using ZStack with Image like background at top of it.")
                    .font(.title2)
                    
                    
                
                Image("avatar")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(12)
                
                Spacer()
            }
            .frame(width: 300)
            .padding(50)
            
        }
    }
}

struct BacgroundDemo3_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundDemo3()
    }
}
