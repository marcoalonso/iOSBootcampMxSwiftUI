//
//  GeometryReaderStacks.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 03/04/23.
//

import SwiftUI

struct GeometryReaderStacks: View {
    var body: some View {
        VStack {
            Text("Layout with GeometryReader")
                .font(.title2)
            GeometryReader { proxy in
                VStack {
                    HStack(spacing: 0.0) {
                        Rectangle()
                            .foregroundColor(Color.blue)
                            .overlay(Text("1"))
                            .frame(width: proxy.size.width / 2, height: proxy.size.height / 2)
                        
                        Rectangle()
                            .foregroundColor(Color.yellow)
                            .overlay(Text("2"))
                            .frame(width: proxy.size.width / 2, height: proxy.size.height / 2)
                    }
                    
                    Rectangle()
                        .foregroundColor(Color.red)
                        .overlay(Text("3"))
                        .frame(width: proxy.size.width, height: proxy.size.height / 2)
                }
            }
        }
    }
}

struct GeometryReaderStacks_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderStacks()
    }
}
