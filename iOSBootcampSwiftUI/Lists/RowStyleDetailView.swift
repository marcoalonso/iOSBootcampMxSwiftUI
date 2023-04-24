//
//  RowStyleDetailView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 03/04/23.
//

import SwiftUI

struct RowStyleDetailView: View {
    
    let item: Item
    
        var body: some View {
            VStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300, maxHeight: 400)
                    .shadow(radius: 12)
                
                Text(item.description)
                    .font(.title2)
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle(item.name)
        }
}

struct RowStyleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let itemDemo = Item(name: "Macbook", description: "Macbook Pro M2 Max with 16 Ram and 500Gb SSD", imageName: "macbook")
        RowStyleDetailView(item: itemDemo)
    }
}
