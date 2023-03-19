//
//  Animation.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 29/09/22.
//

import SwiftUI

struct Animation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            Button {
                withAnimation(.default.repeatCount(4)) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Animation")
                    .fontWeight(.heavy)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue
                        .cornerRadius(20)
                        .shadow(radius: 12)
                    )
            }.padding(50)
            
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.blue : Color.yellow)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
