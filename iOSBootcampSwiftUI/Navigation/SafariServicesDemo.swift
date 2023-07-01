//
//  SafariServicesDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 22/06/23.
//

import SwiftUI
import SafariServices

struct SafariServicesDemo: View {
    
    @State var showSS = false
    @State var urlToShow = "https://www.linkedin.com/company/ios-bootcamp-mx"
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    showSS = true
                } label: {
                    Text("Apple.com")
                        .font(.title)
                        .foregroundColor(.black)
                    
                }
                Text("Using Safari Services")
                    .font(.body)
                    .foregroundColor(.black)
                
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 200 , height: 200)
                
                Link(destination: URL(string: "https://google.com")!) {
                    Text("Google")
                        .foregroundColor(.blue)
                        .font(.title)
                }
                Text("Using Link and  NavigationView to see on Safari Browser")
                    .font(.body)
                    .foregroundColor(.black)
                
                Spacer()
                
            }
            .sheet(isPresented: $showSS) {
                safari(urlString: $urlToShow)
            }
        }
    }
}

struct SafariServicesDemo_Previews: PreviewProvider {
    static var previews: some View {
        SafariServicesDemo()
    }
}

struct safari : UIViewControllerRepresentable {
    
    @Binding var urlString: String

    func makeUIViewController(context: UIViewControllerRepresentableContext<safari>) -> SFSafariViewController {
        let controller = SFSafariViewController(url: URL(string: urlString)!)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<safari>) {
        
    }
}
