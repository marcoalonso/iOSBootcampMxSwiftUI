//
//  Action.swift
//  News
//
//  Created by Marco Alonso Rodriguez on 30/06/23.
//

import Foundation

struct Action: Identifiable {
    let id = UUID()
    let name: String
    let action: String
    let icon: String
    let url: String
}

var actions: [Action] = [
Action(name: "Hacer una sugerencia", action: "sugerencia", icon: "slider.vertical.3", url: "https://forms.gle/guA95kfHXphQHgbx5"),
Action(name: "Califica la aplicación", action: "califica", icon: "star.leadinghalf.filled", url: "https://apps.apple.com/us/app/top-global-news/id6447653915"),
Action(name: "Conocer más sobre nosotros", action: "seguir", icon: "hand.thumbsup", url: "https://www.linkedin.com/company/ios-bootcamp-mx"),
Action(name: "Desarrollador", action: "developer", icon: "person", url: "https://github.com/marcoalonso")
]
