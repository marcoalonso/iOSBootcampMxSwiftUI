//
//  NavigationProgrammatically.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 25/03/23.
//

import SwiftUI

struct NavigationProgrammatically: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isActive: Bool = false
    
    func login() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
         isActive = true
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: DetailViewProgramatically(), isActive: $isActive,
                               label: {
                    Text("This navigation occurs after 2 seconds")
                })
                
                Text("Navigate other view after 2 second to simulate an API Call or some process")
                    .font(.caption)
                
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
                HStack {
                    Spacer()
                    Button("Login") {
                        login()
                    }
                    Spacer()
                }.buttonStyle(PlainButtonStyle())
            }
            .navigationTitle("Login")
        }
    }
}

struct NavigationProgrammatically_Previews: PreviewProvider {
    static var previews: some View {
        NavigationProgrammatically()
    }
}
