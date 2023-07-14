//
//  FeedbackView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 30/06/23.
//

import SwiftUI

struct FeedbackView: View {
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false
    
    @State var isShowingActivityView = false
    @State var urlToShow = ""
    @State var isShowingURL = false
    
    var body: some View {
        VStack {
            List(actions) { action in
                Button {
                    urlToShow = action.url
                    isShowingURL = true
                } label: {
                    HStack {
                        Image(systemName: action.icon)
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Text(action.name)
                            .font(.body)
                    }.padding(12)
                }
            }.listStyle(.plain)
                .frame(height: 300)
            
            Divider()
            
            HStack {
                Toggle(isOn: $isDarkModeOn) {
                    Text("Dark mode")
                }
                .onChange(of: isDarkModeOn) { _ in
                    print("changed")
                }
                .padding(15)
            }.padding(.horizontal)
            
            Divider()
            
            Spacer()
            
                .navigationTitle("Mas Acciones")
                .navigationBarItems(trailing: Button(action: {
                    isShowingActivityView = true
                }, label: {
                    Image(systemName: "square.and.arrow.up.fill")
                }))
        }
        .sheet(isPresented: $isShowingActivityView, content: {
                    ActivityView(activityItems: ["https://apps.apple.com/us/app/top-global-news/id6447653915se-world/id6447369429"])
                })
        .sheet(isPresented: $isShowingURL, content: {
            safari(urlString: $urlToShow)
        })
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
