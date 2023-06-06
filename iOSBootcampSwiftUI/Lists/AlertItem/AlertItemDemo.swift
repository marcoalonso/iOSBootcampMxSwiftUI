//
//  AlertItemDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 05/06/23.
//

import SwiftUI

struct AlertItemDemo: View {
    
    @State private var alertItem: AlertItem?
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Showing Different Alerts")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .padding(12)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                )
                .cornerRadius(12)
            
            HStack {
                Button {
                    alertItem = AlertContext.alert1
                } label: {
                    Text("Alert 1")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.gray)
                        .cornerRadius(10)
                        
                }
                
                Button {
                    alertItem = AlertContext.alert2
                } label: {
                    Text("Alert 2")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.red)
                        .cornerRadius(10)
                        
                }
                
                Button {
                    alertItem = AlertContext.alert3
                } label: {
                    Text("Alert 3")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                }
                
                Button {
                    alertItem = AlertContext.alert4
                } label: {
                    Text("Alert 4")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.orange)
                        .cornerRadius(10)
                        
                }

            }
            
            Spacer()
        }
        .alert(item: $alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, primaryButton: alertItem.primaryButton, secondaryButton: alertItem.secondaryButton!)
        }
        
    }
    

}

struct AlertItemDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertItemDemo()
    }
}
