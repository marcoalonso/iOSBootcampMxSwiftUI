//
//  Colors.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        ScrollView {
            VStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .trailing, endPoint: .leading)
                    )
                    .frame(width: 300, height: 200, alignment: .center)
                    .shadow(color: Color.red, radius: 10, x: -20, y: 5)
                
                // MARK: -  Circulo
                Circle().fill(
                    RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 100)
                )
                .frame(width: 200, height: 200, alignment: .center)
                .shadow(color: .yellow, radius: 20, x: -10, y: 10)
                
                // MARK: -  Circulo
                Circle()
                    .fill(
                        AngularGradient(gradient: Gradient(colors: [Color.white, Color.blue]), center: .center, startAngle: .degrees(0), endAngle: .degrees(180))
                    )
                
                
                RoundedRectangle(cornerSize: CGSize(width: 400, height: 200))
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.yellow]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 300, height: 80, alignment: .center)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                
                
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.yellow, Color.orange]), startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 100, height: 120, alignment: .center)
                    .padding()
                    .shadow(radius: 12)
                
                Spacer()
            }
        }
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
