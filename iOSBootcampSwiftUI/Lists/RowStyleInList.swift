//
//  RowStyleInList.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 03/04/23.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var imageName: String
}

struct RowStyleInList: View {
    let items = [
        Item(name: "Macbook", description: "El MacBook - el compañero perfecto para el trabajo y el entretenimiento. Con su diseño elegante y ligero, el MacBook es fácil de llevar contigo a cualquier lugar. Además, su potente procesador y almacenamiento de alta velocidad te permiten realizar tus tareas con facilidad y sin interrupciones. Con su pantalla Retina brillante y sonido envolvente, el MacBook es ideal para ver películas, escuchar música y videoconferencias. Y con el sistema operativo macOS, tienes acceso a una gran cantidad de aplicaciones y herramientas que te ayudarán a ser más creativo y productivo. Consigue tu MacBook hoy mismo y descubre todo lo que puede hacer por ti.", imageName: "macbook"),
        Item(name: "iPhone 14", description: "El iPhone - un smartphone innovador y de alta calidad. Con su pantalla Retina brillante, cámara de alta resolución y tecnología de última generación, el iPhone te permite estar conectado y ser productivo en cualquier momento y lugar. Además, con una gran cantidad de aplicaciones disponibles en la App Store, puedes personalizar tu experiencia y hacer aún más con tu iPhone. ¡Consigue el tuyo hoy mismo y descubre todo lo que el iPhone puede hacer por ti!", imageName: "iphone"),
        Item(name: "Smartwatch", description: "El Apple Watch - tu compañero para una vida más activa y conectada. Con su diseño elegante y sofisticado, el Apple Watch es el reloj perfecto para cualquier ocasión. Además, con funciones avanzadas como el seguimiento de actividad, la monitorización de la salud y el acceso a tus aplicaciones favoritas, el Apple Watch te ayuda a mantenerte en forma y a estar siempre conectado. Puedes responder llamadas, enviar mensajes y controlar tu música directamente desde tu muñeca. Y con una amplia selección de bandas y caras de reloj intercambiables, puedes personalizar tu Apple Watch para que refleje tu estilo y personalidad. ¡Consigue tu Apple Watch hoy mismo y descubre todo lo que puede hacer por ti!", imageName: "smart-watch"),
        Item(name: "iPad 9na Gen", description: "With its stunning 10.2-inch Retina display, the iPad delivers immersive visuals that are perfect for streaming your favorite shows, playing games, and working on projects. And with the powerful A12 Bionic chip, you can easily multitask between apps, edit videos, and even play games with console-level graphics.", imageName: "ipad")
    ]
    
    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(destination: RowStyleDetailView(item: item)) {
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                        
                        Text(item.name)
                       
                    }
                }
            }
            .navigationTitle("Items")
        }
    }
}

struct RowStyleInList_Previews: PreviewProvider {
    static var previews: some View {
        RowStyleInList()
    }
}
