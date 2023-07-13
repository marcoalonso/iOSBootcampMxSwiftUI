//
//  TextFieldModifiersDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 13/07/23.
//

import SwiftUI

struct TextFieldModifiersDemo: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Registration")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal, 20)
            
            Image("bio")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 12)
            
            
            TextField("Username", text: $username)
                .modifier(IGTextFieldModifier())
                .padding(.top, 20)
            
            TextField("Email", text: $email)
                .modifier(IGTextFieldModifier())
            
            SecureField("Password", text: $password)
                .modifier(IGTextFieldModifier())
            
            Button {
                print("Password")
            } label: {
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 20)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button {
                print("Login")
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            //Divider
            HStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                
                Text("OR")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
            }
            .foregroundColor(.gray)
            
            HStack {
                Image("facebook_logo")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Text("Continue with Facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemBlue))
            }
            .onTapGesture {
                print("Facebook login")
            }
            .padding(.top, 8)
            
            
            Spacer()
        }
    }
}

struct TextFieldModifiersDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldModifiersDemo()
    }
}

