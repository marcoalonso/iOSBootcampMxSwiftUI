//
//  RotateAnimation3D.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/03/23.
//

import SwiftUI

struct RotateAnimation3D: View {
    @State private var flipped: Bool = false
    
    @State private var x : Double = 1.0
    @State private var y : Double = 0.0
    @State private var z : Double = 0.0
    
    @State private var rotationSelected: String = "X"
    
    var body: some View {
        VStack {
            
            Text("Rotation selected: \(rotationSelected)")
                .font(.system(size: 40))
            
            HStack {
                Button() {
                    x = 1.0
                    y = 0.0
                    z = 0.0
                    rotationSelected = "X"
                } label: {
                    Text("  X  ")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .bold()
                        .background {
                            Color.blue
                        }
                        .cornerRadius(8)
                        .shadow(radius: 10)
                        .padding()
                }
                
                Button() {
                    x = 0.0
                    y = 1.0
                    z = 0.0
                    rotationSelected = "Y"
                } label: {
                    Text("  Y  ")
                        .font(.system(size: 30))
                        .bold()
                        .background {
                            Color.yellow
                        }
                        .cornerRadius(8)
                        .shadow(radius: 10)
                        .padding()
                }
                
                Button() {
                    x = 0.0
                    y = 0.0
                    z = 1.0
                    rotationSelected = "Z"
                } label: {
                    Text("  Z  ")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .bold()
                        .background {
                            Color.orange
                        }
                        .cornerRadius(8)
                        .shadow(radius: 10)
                        .padding()
                }
            }
            
            HStack {
                
            }.frame(maxWidth: 300, maxHeight: 150)
                .background {
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.white, Color.orange]), startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                        .rotation3DEffect(
                            flipped ? Angle(degrees: 180) : .zero,
                                          axis: (x: x, y: y, z: z))
                        .animation(.default)
                        .onTapGesture {
                            flipped.toggle()
                        }
                }
        }
    }
}

struct RotateAnimation3D_Previews: PreviewProvider {
    static var previews: some View {
        RotateAnimation3D()
    }
}
