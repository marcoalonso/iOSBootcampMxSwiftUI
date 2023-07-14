//
//  iOSBootcampSwiftUIApp.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

@main
struct iOSBootcampSwiftUIApp: App {
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkModeOn ? .dark : .light)
        }
    }
}
