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
    
    /// The delegate required by `MFMailComposeViewController`
    private let mailComposeDelegate = MailDelegate()

    /// The delegate required by `MFMessageComposeViewController`
    private let messageComposeDelegate = MessageDelegate()
    
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
                        self.presentMailCompose()
                    } label: {
                        HStack {
                            Image(systemName: "mail")
                            Text("Send an email")
                        }
                    }
                    
                    ///Send email
                    Button {
                        self.presentMessageCompose()
                    } label: {
                        HStack {
                            Image(systemName: "message")
                            Text("Send a text message ")
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
                    ///iOS Bootcamp Mx
                    ///
                    Link(destination: URL(string: "https://mx.linkedin.com/company/ios-bootcamp-mx?trk=public_post_reshare_feed-actor-name")!) {
                        HStack {
                            Image(systemName: "apps.iphone")
                            Text("iOS Bootcamp Mx - LinkedIn")
                        }
                    }
                    
                    Link(destination: URL(string: "https://www.facebook.com/people/IOS-Bootcamp-Mx/100090332195526/")!) {
                        HStack {
                            Image(systemName: "apps.iphone")
                            Text("iOS Bootcamp Mx - Facebook")
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

extension SettingsScreen {

    /// Delegate for view controller as `MFMailComposeViewControllerDelegate`
    private class MailDelegate: NSObject, MFMailComposeViewControllerDelegate {

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            // Customize here
            controller.dismiss(animated: true)
        }

    }

    /// Present an mail compose view controller modally in UIKit environment
    private func presentMailCompose() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let vc = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController

        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = mailComposeDelegate
        composeVC.setToRecipients(["marcoalonsoiosdeveloper@gmail.com"])
        composeVC.setSubject("Quiero hacer una sugerencia")
        composeVC.setMessageBody("Me gustaría ...", isHTML: false)
        vc?.present(composeVC, animated: true)
    }
}

extension SettingsScreen {

    /// Delegate for view controller as `MFMessageComposeViewControllerDelegate`
    private class MessageDelegate: NSObject, MFMessageComposeViewControllerDelegate {
        func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
            // Customize here
            controller.dismiss(animated: true)
        }

    }

    /// Present an message compose view controller modally in UIKit environment
    private func presentMessageCompose() {
        guard MFMessageComposeViewController.canSendText() else {
            return
        }
        let vc = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController

        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = messageComposeDelegate
        composeVC.recipients = ["4432282860"]
        composeVC.body = "I would like to ..."
        vc?.present(composeVC, animated: true)
    }
}
