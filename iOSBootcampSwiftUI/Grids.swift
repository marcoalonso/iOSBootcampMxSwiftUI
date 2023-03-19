//
//  Grids.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct Grids: View {
    /*
     
    let columns = [GridItem(.fixed(100)),
                   GridItem(.fixed(100)),
                   GridItem(.fixed(100)),
    ]
     */
    
    let columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 200)),
        GridItem(.adaptive(minimum: 50)),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(1...21, id: \.self) { index in
                Text("Item \(index)")
                    .padding()
                    .foregroundColor(.white)
                    .background {
                        Color.blue
                    }
            }
        }
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
