//
//  SettingsScreen.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 14/07/23.
//

import SwiftUI
import MessageUI

struct SettingsScreen: View {
    @State private var mostrarAlerta = false
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false
    
    let phoneNumber = "4432282860"
    
    var body: some View {
        VStack {
            Form {
                // MARK:  Contact
                Section {
                    ///Call
                    Button {
                        if let phoneURL = URL(string: "tel://\(phoneNumber)") {
                            UIApplication.shared.open(phoneURL, options: [:], completionHandler: nil)
                        }
                    } label: {
                        HStack {
                            Image(systemName: "phone")
                            Text("Call Me")
                        }
                    }
                    ///Send email
                    Button {
                        print("Send email")
                    } label: {
                        HStack {
                            Image(systemName: "mail")
                            Text("Send an email")
                        }
                    }
                    ///Sugestion
                    Link(destination: URL(string: "https://forms.gle/guA95kfHXphQHgbx5")!) {
                        HStack {
                            Image(systemName: "pencil")
                            Text("Make a suggestion")
                        }
                    }
                    Button {
                        openWhatsApp()
                    } label: {
                        HStack {
                            Image(systemName: "phone.bubble.left")
                            Text("Send WhatsApp")
                        }
                    }
                } header: {
                    HStack {
                        Text("Contact")
                    }.padding(12)
                }//Section
                
                // MARK:  Informacion
                Section(header: Text("Information")) {
                    Link(destination: URL(string: "https://github.com/marcoalonso")!) {
                        HStack {
                            Image(systemName: "person")
                            Text("Developer")
                        }
                    }
                    Link(destination: URL(string: "https://www.youtube.com/@marcoalonso3284")!) {
                        HStack {
                            Image(systemName: "play.display")
                            Text("YouTube Channel")
                        }
                    }
                  
                }
                
                Section(header: Text("Appearance"), footer: Text("System configuration options")) {
                    Toggle(isOn: $isDarkModeOn) {
                        Text("Dark Mode")
                    }
                }
                
               

            }
            .navigationBarTitle("Settings", displayMode: .large)
        }
        .alert(isPresented: $mostrarAlerta, content: {
            Alert(
                title: Text("Atención"),
                message: Text("Al parecer no tienes instalada la aplicación de WhatsApp"),
                primaryButton: .default(Text("Aceptar")) {
                    //Aceptar Button
                },
                secondaryButton: .destructive(Text("Salir")) {
                    //Salir
                    exit(0)
                }
            )
        })
    }
    
    func openWhatsApp() {
        let whatsappURL = URL(string: "https://api.whatsapp.com/send?phone=4432282860&text=Hola")!
        if UIApplication.shared.canOpenURL(whatsappURL) {
            UIApplication.shared.open(whatsappURL, options: [:], completionHandler: nil)
        } else {
          mostrarAlerta = true
        }
    }
    
    
    
        

}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
