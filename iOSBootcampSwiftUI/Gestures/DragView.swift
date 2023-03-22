//
//  DragView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/03/23.
//

import SwiftUI

struct DragView: View {
    
    @State private var position = CGPoint(x: 100, y: 100)
    let bounds = UIScreen.main.bounds
    @State private var danger: Bool = false
    
    var body: some View {
        VStack {
            Image("seat")
                .resizable()
                .cornerRadius(15)
                .frame(maxWidth: 100, maxHeight: 100)
                .zIndex(1.0)
                .position(position)
                .gesture(DragGesture()
                    .onChanged({ value in
                        position = value.location
                        print(position)
                    })
                        .onEnded({ value in
                           
                            if position.y > bounds.height/2 {
                                danger = true
                            } else {
                                danger = false
                            }
                        })
                )
            
            HStack {
                Text("Danger")
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    (danger ? Color.red : Color.green)
                }
        }
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
