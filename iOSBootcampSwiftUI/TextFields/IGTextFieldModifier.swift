//
//  IGTextFieldModifier.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 13/07/23.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal, 24)
    }
    
    
}
