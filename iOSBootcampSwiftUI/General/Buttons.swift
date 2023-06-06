//
//  Buttons.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct Buttons: View {
    
    @State private var title: String = "Hola Mundo"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(title)
                .font(.largeTitle)
            
            // MARK: - Button 1
            Button("Press Me!") {
                self.title = "Button (Text) { }"
            }
            .accentColor(.red)
            
            // MARK: - Button 2
            Button {
                //Action:
                self.title = "Buton { 'Action' } label: { }"
            } label: {
                Text("Boton #2".uppercased())
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .padding()
                    .background(Color.blue
                        .cornerRadius(13)
                        .shadow(radius: 12)
                    )
            }
            // MARK: - Button 3
            Button {
                self.title = "Buton { 'Action' } Circle() .overlay()"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75, alignment: .center)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
                
            }
            
            // MARK: - Button 4
            Button {
                //action:
                self.title = "Buton { 'Action' } label: { 'Text' Capsule() }!"
            } label: {
                Text("Finish".lowercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2)
                    )
            }

            Button {
                title = "Simple Button"
            } label: {
                Text("Aceptar".uppercased())
                    .padding(11)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(12)
                
            }

        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
