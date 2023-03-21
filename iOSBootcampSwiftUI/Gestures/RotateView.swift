//
//  RotateView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
//

import SwiftUI

struct RotateView: View {
    
    @State private var degress: Double = 0.0
    
    var body: some View {
        VStack {
            Image("seat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(25)
                .rotationEffect(.degrees(degress))
                .padding(.top, 50)
                .animation(.default)
            Spacer()
                
            VStack {
                Button() {
                    degress += 45
                } label: {
                    Text("Rotate 45°")
                        .font(.subheadline)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background {
                            Color.black
                        }
                        .cornerRadius(10)
                        .padding(.leading, 10)
                }

                Button() {
                    degress -= 45
                } label: {
                    Text("Rotate -45°")
                        .font(.subheadline)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background {
                            Color.green
                        }
                        .cornerRadius(10)
                        .padding(.leading, 10)
                }
                
                Button() {
                    degress += 90
                } label: {
                    Text("Rotate 90°")
                        .frame(width: 100, height: 50)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background {
                            Color.red
                        }
                        .cornerRadius(10)
                        .padding(.leading, 10)
                }
                
                Button() {
                    degress += 120
                } label: {
                    Text("Rotate 120°")
                        .frame(width: 100, height: 50)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .background {
                            Color.yellow
                        }
                        .cornerRadius(10)
                        .padding(.leading, 10)
                }
                
                Button() {
                    degress -= 60
                } label: {
                    Text("Rotate -60°")
                        .frame(width: 100, height: 50)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background {
                            Color.purple
                        }
                        .cornerRadius(10)
                        .padding(.leading, 10)
                }

            }
        }
    }
}

struct RotateView_Previews: PreviewProvider {
    static var previews: some View {
        RotateView()
    }
}
