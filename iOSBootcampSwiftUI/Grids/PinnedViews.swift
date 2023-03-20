//
//  PinnedViews.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
//

import SwiftUI

struct PinnedViews: View {
    
    let columns = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
    ]
    
    private func headerView(_ index: Int) -> some View {
        Text("Section \(index)")
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background {
                Color.red
            }
            .foregroundColor(.white)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders]) {
                    
                    ForEach(1..<11) { section in
                        
                        Section(header: headerView(section)) {
                            ForEach(1..<Int.random(in: 5...20)) { index in
                                Text("Item \(index)")
                                    .padding()
                                    .background {
                                        Color.blue
                                    }
                                    .foregroundColor(.white)
                            }

                        }
                        
                    }
                }
            }
            
        }.navigationTitle("Grid Items Pinned View")
    }
}

struct PinnedViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PinnedViews()
        }
    }
}
