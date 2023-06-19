//
//  TabViewDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/06/23.
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView {
            BacgroundDemo1()
                .tabItem {
                    Label("Option1", systemImage: "arrow.down")
                }
            
            BacgroundDemo2()
                .tabItem {
                    Label("Option2", systemImage: "arrow.left")
                }
            
            BacgroundDemo3()
                .tabItem {
                    Label("Option3", systemImage: "arrow.up")
                }
            
            BacgroundDemo4()
                .tabItem {
                    Label("Option4", systemImage: "arrow.right")
                }
            
            BacgroundDemo5()
                .tabItem {
                    Label("Option 5", systemImage: "cloud")
                }
            
            
        }
        .foregroundColor(.black)
        .tint(.white)
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}
