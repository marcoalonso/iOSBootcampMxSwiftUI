//
//  Namespace.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
//

import SwiftUI

struct OnChangeModifierDemo: View {
    
    @State private var isLightOn: Bool = false
    
    var body: some View {
        ZStack {
            Toggle("Light", isOn: $isLightOn)
                .font(.largeTitle)
                .foregroundColor(isLightOn ? .black : .white)
                .onChange(of: isLightOn) { newValue in
                    if newValue {
                        print("Light On")
                            
                    } else {
                        print("Light Off")
                    }
                }.fixedSize()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isLightOn ? Color.white : Color.black).edgesIgnoringSafeArea(.all)
    }
    
}

