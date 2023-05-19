//
//  NavigationStackAndSheet.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 25/04/23.
//

import SwiftUI

struct NavigationStackAndSheet: View {
    @State private var isPresented = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Navigation with sheet and NavigationView")
                    .font(.title)
                
                Spacer()
                
                Button {
                    isPresented = true
                } label: {
                    Text("Go To Next View")
                        .frame(width: 300, height: 50)
                        .font(.title)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .cornerRadius(12)
                        .padding()
                }.padding()

            }.sheet(isPresented: $isPresented) {
                NavigationView {
                    DetailSheetView()
                }
                .presentationDetents([.height(400), .medium, .large])
                .presentationDragIndicator(.visible)
                .presentationBackgroundInteraction(.enabled)
                .presentationBackground(.ultraThinMaterial)
                .presentationCornerRadius(20)
            }
        }
    }
}

struct NavigationStackAndSheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackAndSheet()
    }
}
