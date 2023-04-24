//
//  DisplayItemsInList.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 03/04/23.
//

import SwiftUI

struct Dev: Identifiable {
    let id = UUID()
    let name: String
    let languaje: String
}

let devs = [
Dev(name: "Marco", languaje: "Swift"),
Dev(name: "Alonso", languaje: "kotlin"),
Dev(name: "Lizeth", languaje: "Java"),
Dev(name: "Santiago", languaje: "Dart"),
]

struct DisplayItemsInList: View {
    var body: some View {
        List {
            
            // MARK:  Numbers
            Section(header: Text("Numbers")) {
                ForEach (1...10, id: \.self) { index in
                    
                    HStack {
                        Image("espana")
                            .resizable()
                            .frame(maxWidth: 100, maxHeight: 100)
                            .cornerRadius(12)
                            .shadow(radius: 6)
                        
                        VStack {
                            Text("Image \(index)")
                                .font(.title2)
                            
                            Label("Icon #\(index)", systemImage: "star")
                                .font(.title3)
                                .foregroundColor(.purple)
                        }
                        
                    }
                    
                }
                
            }
            
            // MARK:  Objects
            Section(header: Text("Developers (Objects)")) {
                ForEach (devs.indices) { index in
                    let dev = devs[index]
                    HStack {
                        Label("\(dev.name) - ", systemImage: "person")
                            .font(.title)
                        
                        Text(dev.languaje)
                            .font(.title2)
                    }
                }
            }
        }
        .onTapGesture {
            print("Tapp")
        }
        .listStyle(.insetGrouped)
    }
}

struct DisplayItemsInList_Previews: PreviewProvider {
    static var previews: some View {
        DisplayItemsInList()
    }
}
