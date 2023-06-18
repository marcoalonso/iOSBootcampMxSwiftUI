//
//  WebViewDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI
import WebKit

struct WebViewDemo: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Option 1, with maxHeight 400 ")
                    .font(.title3)
                    .foregroundColor(.white)
                WebView(urlString: "https://apple.com")
                    .frame(maxHeight: 400)
                
                Text("Option 2")
                    .font(.title3)
                    .foregroundColor(.blue)
                
                NavigationLink(destination: WebView(urlString: "https://apple.com")) {
                    HStack {
                        Image(systemName: "arrow.right")
                            .bold()
                        Text("Apple.com")
                            .font(.title)
                        Image(systemName: "globe")
                    }
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.red)
                    .cornerRadius(12)
                }
                
                Spacer()
            }
            .background(Color.black)
            .padding(.top, 10)
            .navigationBarTitle("Web View ", displayMode: .inline)
        }
    }
}

struct WebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: urlString)!
            let request = URLRequest(url: url)
            uiView.load(request)
    }
}

struct WebViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        WebViewDemo()
    }
}
