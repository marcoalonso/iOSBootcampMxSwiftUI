//
//  PhotosUIDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 17/07/23.
//

import SwiftUI

struct PhotosUIDemo: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    
    var body: some View {
        VStack {
            //Actioon toolbar
            HStack {
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }

            }.padding(.horizontal)
            
            //post image and caption
            HStack(spacing: 8.0) {
                if let profileImage = viewModel.profileImage {
                    profileImage
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                    
                
                TextField("Enter your caption", text: $caption, axis: .vertical)
                    
            }
            .padding()
            
            Spacer()
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

struct PhotosUIDemo_Previews: PreviewProvider {
    static var previews: some View {
        PhotosUIDemo()
    }
}
