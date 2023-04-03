//
//  Icons.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        
        VStack(spacing: 10) {
            Image(systemName: "newspaper")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .font(.largeTitle)
            
            Image(systemName: "camera")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .font(.largeTitle)
            
            Image(systemName: "car.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .font(.largeTitle)
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .font(.largeTitle)
                .shadow(radius: 10)
        }
        
        
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
