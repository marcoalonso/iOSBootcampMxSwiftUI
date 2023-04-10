//
//  AutoScrollListDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 10/04/23.
//

import SwiftUI

struct AutoScrollListDemo: View {
    @State private var text = ""
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                
                VStack(alignment: .center, spacing: 5.0) {
                    Text("Escribe el item hacia donde quieres hacer scroll")
                    
                        .font(.title3)
                        .foregroundColor(.blue)
                    
                    TextField("150", text: $text)
                        
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                        

                    
                    Button("Scroll to 100") {
                        withAnimation {
                            let id = Int(text)
                            proxy.scrollTo(id)
                        }
                    }
                }
                .multilineTextAlignment(.center)
                .padding(20)
                
                List (1...1000, id: \.self) { index in
                    Text("Item: \(index)")
                        .id(index)
                        .font(.title2)
                }
            }.padding(.top, 50)
        }
    }
}

struct AutoScrollListDemo_Previews: PreviewProvider {
    static var previews: some View {
        AutoScrollListDemo()
    }
}
