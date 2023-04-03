//
//  BindingProperties.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct BindingProperties: View {
    
    @State private var title2: String = "Bienvenido"
    @State private var titleInput: String = "..."
    
    var body: some View {
        VStack {
            
            HeaderView(title: $title2)
            
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
                .frame(height: 55)
                .multilineTextAlignment(.center)
                .padding()
            Button {
                title2 = titleInput
                titleInput = ""
            } label: {
                Text("Cambiar titulo".uppercased())
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue
                        .cornerRadius(13)
                        .shadow(radius: 12)
                    )
            }
            Spacer()
        }.padding()
    }
}

struct BindingProperties_Previews: PreviewProvider {
    static var previews: some View {
        BindingProperties()
    }
}

struct HeaderView: View {
    @Binding var title: String
    
    var body: some View {
        Text(title)
            .shadow(radius: 14)
            .background(Color.pink)
            .frame(width: .infinity, height: 55, alignment: .center)
            .cornerRadius(15)
            .font(.largeTitle)
            .foregroundColor(Color.white)
    }
}
