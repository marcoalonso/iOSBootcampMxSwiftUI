//
//  MailView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 14/07/23.
//

import SwiftUI
import MessageUI

struct MailView: UIViewControllerRepresentable {
    typealias UIViewControllerType = MFMailComposeViewController
    
    @Binding var result: Result<MFMailComposeResult, Error>?
    @Environment(\.presentationMode) private var presentationMode
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let viewController = MFMailComposeViewController()
        viewController.mailComposeDelegate = context.coordinator
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {
        
    }
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        let parent: MailView
        
        init(_ parent: MailView) {
            self.parent = parent
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            if let error = error {
                parent.result = .failure(error)
            } else {
                parent.result = .success(result)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct MailResult: Identifiable {
    let id = UUID()
    let result: Result<MFMailComposeResult, Error>
}
