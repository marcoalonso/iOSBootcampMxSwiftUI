//
//  BacgroundDemo5.swift
//  BackgroundsDemo
//
//  Created by Marco Alonso Rodriguez on 18/06/23.
//

import SwiftUI

struct BacgroundDemo5: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                Image("avatar")
                    .resizable()
                    .frame(width: 320, height: 220)
                    .cornerRadius(12)
                
                Text("Option 5")
                    .font(.largeTitle)
                    
                    .bold()
                
                Text("Using NavighationView and Vstack with size of full screen and .background with Image")
                    .font(.subheadline)

                
                Spacer()
                
            }.padding(15)
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(
                Image("nubes")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            )
            .navigationBarTitle("Option 5", displayMode: .inline)
        }
    }
}

struct BacgroundDemo5_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundDemo5()
    }
}
