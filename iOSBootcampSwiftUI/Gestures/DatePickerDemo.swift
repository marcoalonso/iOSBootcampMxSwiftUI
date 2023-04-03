//
//  DatePickerDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 20/03/23.
//

import SwiftUI

struct DatePickerDemo: View {
    @State var currentDate = Date()
    var body: some View {
        VStack {
            Text("DatePicker")
                .font(.system(size: 26))
            DatePicker(
                 "Start Date",
                 selection: $currentDate,
                 displayedComponents: [.date]
             )
            .frame(width: 300, height: 100)
            .background {
                Color.blue
            }
            .cornerRadius(18)
            Spacer()
            Text("Date picked : \(currentDate)")
                .font(.subheadline)
                .foregroundColor(.blue)
        }
    }
}

struct DatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerDemo()
    }
}
