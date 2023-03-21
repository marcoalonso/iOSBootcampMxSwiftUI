//
//  HeroAnimations.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
// https://designcode.io/swiftui-handbook-matched-geometry-effect

import SwiftUI

struct HeroAnimations: View {
    
    @Namespace var namespace
    
    @State private var selectedSymbol: String?
    
    //Reference:
    let symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer","headphones","music.note.tv","mic","plus.bubble", "video", "applewatch", "macpro.gen3.fill"]
    
    var body: some View {
        
        VStack {
            
            if selectedSymbol == nil {
                LazyVGrid(columns: [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())
                                   ]) {
                    ForEach(symbols, id: \.self) { symbol in
                        Image(systemName: symbol)
                            .font(.system(size: 40))
                            .padding()
                            .matchedGeometryEffect(id: symbol, in: namespace)
                            .onTapGesture {
                                selectedSymbol = symbol
                            }
                    }
                }//Grid
                                   .animation(.spring())
            } else if let selectedSymbol = selectedSymbol {
                Image(systemName: selectedSymbol)
                    .matchedGeometryEffect(id: selectedSymbol, in: namespace)
                    .font(.system(size: 70))
                    .onTapGesture {
                        withAnimation {
                            self.selectedSymbol = nil
                        }
                    }
                    .animation(.spring())
                    
                    
                Spacer()
            }
            
            
        }
    }
}

struct HeroAnimations_Previews: PreviewProvider {
    static var previews: some View {
        HeroAnimations()
    }
}
