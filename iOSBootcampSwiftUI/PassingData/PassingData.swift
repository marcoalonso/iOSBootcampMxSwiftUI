//
//  PassingData.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 29/03/23.
//

import SwiftUI

struct PassingData: View {
    
    @State var image = Image("seat")
    @State var text = "Saludos"
    
    var body: some View {
        VStack( spacing: 20) {
            HStack {
                BindingImageDemo(image: $image)
                Text("Binding Image")
            }.background {
                Color.orange
            }
            
            HStack {
                BindingStringDemo(text: $text)
                Text("Binding String")
            }.background {
                Color.gray
            }
        }.padding(.trailing, 50)
            .padding(.leading, 50)
    }
}

struct PassingData_Previews: PreviewProvider {
    static var previews: some View {
        PassingData()
    }
}
