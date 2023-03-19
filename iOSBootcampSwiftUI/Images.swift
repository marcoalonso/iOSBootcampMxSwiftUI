//
//  Images.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
            VStack(alignment: .center, spacing: 10) {
                Image("seat")
                    .resizable()
                    // .fit toma el tamaño original de la imagen sin deformarla
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 10)
                    .padding()
                    .cornerRadius(30)
                
                Image("seat")
                    .resizable()
                    // .fill llena la imagen
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 10)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    
                
                Image("seat")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .center)
                    .clipped() //recorta la imagen al tamaño del frame
                    .cornerRadius(30)
                
                Image("seat")
                    .resizable()
                    .frame(width: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
