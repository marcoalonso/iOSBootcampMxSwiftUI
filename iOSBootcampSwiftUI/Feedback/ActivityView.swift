//
//  ActivityView.swift
//  TheMovies
//
//  Created by Marco Alonso Rodriguez on 23/06/23.
//

import UIKit
import SwiftUI

struct ActivityView: UIViewControllerRepresentable {
    let activityItems: [Any]
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        return activityViewController
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // No es necesario implementar nada aquí
    }
}
