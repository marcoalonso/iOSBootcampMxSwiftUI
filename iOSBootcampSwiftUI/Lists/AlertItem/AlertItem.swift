//
//  AlertItem.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 05/06/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
    var primaryButton: Alert.Button
    var secondaryButton: Alert.Button?
}

enum AlertContext {
    static let alert1 = AlertItem(title: Text("Alert 1"),
                                            message: Text("Text of Alert1 Example"),
                                  primaryButton: .destructive(Text("Ok"), action: {
        print("Ok Button Tapped")
    }),
                                  secondaryButton: .default(Text("Accept")))
    
    static let alert2 = AlertItem(title: Text("Alert 2"),
                                  message: Text("Text of Alert 2 Example"),
                                  primaryButton: .destructive(Text("Ok")),
                                  secondaryButton: .default(Text("Login"), action: {
        print("Login tapped!")
    }))
    
    static let alert3  = AlertItem(title: Text("Alert 3"),
                                   message: Text("Text of Alert 3 Example"),
                                   primaryButton: .destructive(Text("Ok")),
                                   secondaryButton: .default(Text("Close")))
    
    static let alert4 = AlertItem(title: Text("Alert 4"),
                                  message: Text("Text of Alert 4 Example"),
                                  primaryButton: .destructive(Text("Ok")),
                                  secondaryButton: .default(Text("Print some info"), action: {
        print("Some info ...")
    }))
}
