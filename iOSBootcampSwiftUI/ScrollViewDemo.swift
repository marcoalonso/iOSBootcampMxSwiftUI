//
//  ScrollView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct ScrollViewDemo: View {
    var body: some View {
        ScrollView {
               VStack(alignment: .leading) {
                   ForEach(0..<1000) {
                       Text("Row \($0)")
                       Button {
                           print("Hola")
                       } label: {
                           Label("Play", systemImage: "play.fill")
                               .font(.headline)
                               .foregroundColor(.black)
                               .padding(.vertical, 10)
                               .frame(maxWidth: .infinity)
                               .background(.white)
                               .cornerRadius(20)
                       }
                   }
               }
           }
        
    }
}



struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewDemo()
    }
}
