//
//  Text.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct TextDemo: View {
    var body: some View {
        VStack {
            
            Text("Hola mi nombre es Marco y soy iOS Developer")
                .font(.title)
                .foregroundColor(.blue)
            
            Text(Date(), style: .date)
            
            Text(Date(), style: .time)
            
            // Add icon next to text
            Label("I Love iOS system",
             systemImage: "heart.fill")
            
            Link("Visit mys site",
             destination: URL(string: "https://github.com/marcoalonso")!)
            
            Text("Welcome to iOS Bootcamp MX where you cand learn a lot and fun!")
                .font(.body)
                .fontWeight(.semibold)
                .underline()
                .multilineTextAlignment(.center)
            
            
            Text("Marco Alonso Rodriguez")
                .italic()
                .fontWidth(.standard)
            
            Text("Visita mi canal de Youtube".capitalized)
                
                .font(.title)
                .foregroundColor(.blue)
            Spacer()
        }
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TextDemo()
    }
}
