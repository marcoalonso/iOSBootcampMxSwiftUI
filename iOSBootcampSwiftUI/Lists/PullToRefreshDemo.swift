//
//  PullToRefreshDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 10/04/23.
//

import SwiftUI

struct PullToRefreshDemo: View {
    
    @State private var refreshDates: [Date] = []
    
    var body: some View {
        NavigationView {
            List(refreshDates, id: \.self) { date in
                VStack {
                    Label("Formatted", systemImage: "clock")
                    Text("\(date.formatted())")
                        .font(.title2)
                        .foregroundColor(.purple)
                    
                    Spacer()
                    
                    Label("Only Time", systemImage: "hourglass")
                    Text("\(date.formatted(date: .omitted, time: .standard))")
                        .font(.title2)
                        .foregroundColor(.purple)
                    Spacer()
                    
                    Label("Abreviated and time complete", systemImage: "calendar.badge.clock")
                    Text("\(date.formatted(date: .abbreviated, time: .complete))")
                        .font(.title2)
                        .foregroundColor(.purple)
                }
                
                
            }.listStyle(.sidebar)
                .refreshable {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                     let currentDate = Date()
                        refreshDates.append(currentDate)
                    }
                }
        }
    }
}

struct PullToRefreshDemo_Previews: PreviewProvider {
    static var previews: some View {
        PullToRefreshDemo()
    }
}
