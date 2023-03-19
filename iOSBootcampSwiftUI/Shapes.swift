//
//  Shapes.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        
        VStack {
            Circle()
                .fill(Color.red)
            Circle()
                .foregroundColor(Color.purple)
            Circle()
                .stroke(Color.brown, lineWidth: 10)
                .shadow(radius: 20)
                .padding()
            Circle()
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
                .padding()
            Circle()
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
                .padding()
            Circle()
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .square, dash: [10]))
                .padding()

            Rectangle()
                .fill(Color.blue)
                .padding()
            RoundedRectangle(cornerRadius: 44)
                .foregroundColor(.yellow)
            
            Circle()
                .trim(from: 0.5, to: 1)
            Ellipse()
                .stroke(lineWidth: 3)
                .frame(width: 200, height: 100, alignment: .center)
                .foregroundColor(.purple)
                .shadow(radius: 10)
        }
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
