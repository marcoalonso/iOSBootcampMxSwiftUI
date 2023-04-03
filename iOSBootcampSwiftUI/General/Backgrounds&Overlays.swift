//
//  Backgrounds&Overlays.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct Backgrounds_Overlays: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Spacer()
            
            Text("Marco Alonso")
                .background(
    //                Color.blue
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(Circle()
                    .fill(Color.yellow)
                .frame(width: 110, height: 110, alignment: .center))
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .top, endPoint: .bottom)
                )
                .padding()
                .shadow(radius: 30)
            
                .frame(width: 290, height: 200, alignment: .center)
                .overlay(
                    Text("3 Años de experiencia".uppercased())
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
            
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(Color.white)
                .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 110, height: 110, alignment: .center)
                    .shadow(color: Color.purple, radius: 10, x: 0.0, y: 10)
                    .overlay(
                    Circle()
                        .fill(Color.pink)
                        .frame(width: 40, height: 40, alignment: .center)
                        .overlay(Text("5")
                            .font(.headline)
                            .foregroundColor(.white)
                        )
                        .shadow(color: .black, radius: 10, x: 6, y: 6) ,alignment: .bottomTrailing
                    )
                )//background
            
            Spacer()
            
            
            Circle()
                .fill(Color.blue)
                .frame(width: 150, height: 150, alignment: .center)
                .overlay(
                    Text("ios Developer")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                Circle()
                    .fill(Color.black)
                    .frame(width: 160, height: 160, alignment: .center)
                )
                .shadow(radius: 10)
            
            Spacer()
            
        }
    }
}

struct Backgrounds_Overlays_Previews: PreviewProvider {
    static var previews: some View {
        Backgrounds_Overlays()
    }
}
