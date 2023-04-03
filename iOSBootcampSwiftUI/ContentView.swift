//
//  ContentView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    
    typealias Options = [(AnyView, String)]
    typealias ExampleViews = [(AnyView, String, String)]
    
    var navigation: ExampleViews = [
        (AnyView(NavigationButtonClick()), "Navigation Simple", "Navigation based on Button click"),
        (AnyView(PassDataFromList()), "Passing Data from List", "how to pass data to a detail view"),
        (AnyView(ModalSheet()), "Sheet with Modal", "Show a view with environment dismiss"),
        (AnyView(NavigationProgrammatically()), "NavigationProgrammatically", "Navigate other view after 2 seconds"),
        (AnyView(PassingData()), "Passing Data", "Different types of data"),
        (AnyView(DownloadWithCombine()), "Download with combine", "From fake API")
    ]
    
    var lists: ExampleViews = [
        (AnyView(DisplayItemsInList()), "Display Items In List", "Numbers, Custom Objects Indices"),
        (AnyView(FormDemo()), "Form Demo", "Simple form with alert and func to validate"),
    ]
    
    var general: Options = [
        (AnyView(Images()), "Images"),
        (AnyView(PinnedViews()), "PinnedViews"),
        (AnyView(Grids()), "Grids"),
        (AnyView(TextDemo()), "Texts"),
        (AnyView(ScrollViewDemo()), "ScrollView"),
        (AnyView(DatePickerDemo()), "Date Picker Demo"),
        (AnyView(ObservedObjectDemo()), "Observed Object"),
        (AnyView(Colors()), "Colors"),
        (AnyView(Buttons()), "Buttons"),
        (AnyView(HeroAnimations()), "Animation Geometry"),
        (AnyView(NamespaceDemo()), "NamespaceDemo")
    ]
    
    var shapes: Options = [
    (AnyView(Shapes()), "Shapes"),
    (AnyView(Animation()), "Animation"),
    (AnyView(Icons()), "Icons"),
    (AnyView(Icons()), "Backgroud/Overlays"),
    ]
    
    
    
    
    var gestures: Options = [
        (AnyView(MagnifyView()), "MagnifyView"),
        (AnyView(RotateView()), "Rotation View"),
        (AnyView(DragView()), "Drag View"),
        (AnyView(RotateAnimation3D()), "Rotation 3D View"),
    ]
   
    
    
    var body: some View {
    
        NavigationView {
            List {
                // MARK:  Navigation
                Section(header: Text("Navigation")) {
                    ForEach(navigation, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.headline)
                                Text(current.1)
                                    .font(.subheadline)
                            }
                        })
                    }
                }
                
                // MARK:  Navigation
                Section(header: Text("Lists")) {
                    ForEach(lists, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.headline)
                                Text(current.2)
                                    .font(.subheadline)
                            }
                        })
                    }
                }
                
                // MARK:  Gestures
                Section(header: Text("Gestures")) {
                    ForEach(gestures, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.headline)
                                
                            }
                        })
                    }
                }
                
                // MARK:  - Gestures
                Section(header: Text("Gestures")) {
                    ForEach(gestures, id: \.1) { gesture in
                        NavigationLink (destination: gesture.0) {
                            VStack(alignment: .leading) {
                                Text(gesture.1)
                                    .font(.headline)
                            }
                        }
                    }
                }
                
                // MARK:  Shapes
                Section(header: Text("Shapes")) {
                    ForEach(shapes, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.headline)
                            }
                        })
                    }
                }
                
                // MARK:  General
                Section(header: Text("General")) {
                    ForEach(general, id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.headline)
                            }
                        })
                    }
                    
                }
                
            }//List
            .listStyle(GroupedListStyle())
            .navigationTitle("iOS Bootcamp SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
