//
//  BindingImageDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 29/03/23.
//

import SwiftUI

struct BindingImageDemo: View {
    @Binding var image: Image

        var body: some View {
            VStack {
                image
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Image")
            }
        }
}

struct BindingImageDemo_Previews: PreviewProvider {
    static var previews: some View {
            let image = Binding<Image>(
                get: { Image(systemName: "star.fill") },
                set: { _ in }
            )
            return BindingImageDemo(image: image)
        }
}
