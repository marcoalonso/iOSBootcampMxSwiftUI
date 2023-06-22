//
//  LazyHGridDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 21/06/23.
//

import SwiftUI

struct LazyHGridDemo: View {
    private var gridItemLayout = [GridItem(.flexible())]
       // Created array with images filename.
       private var places = ["tailandia","hungria","belgica","noruega","libano","china","españa","holanda"]
    
       
       var body: some View {
           // Remove Extra parameters
           ScrollView(.horizontal){
               LazyHGrid(rows: gridItemLayout, spacing:20) {
                   ForEach(places, id:\.self){ place in
                       VStack{
                       Image(place)
                           .resizable()
                           .frame(width: 320, height: 320)
                           .scaledToFit()
                           .cornerRadius(10.0)
                       }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                   }
               }
           }
      
       }
}

struct LazyHGridDemo_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridDemo()
    }
}
