//
//  Task.swift
//  TasksDemo
//
//  Created by Marco Alonso Rodriguez on 07/05/23.
//

import Foundation

///- * Esta clase  representa una tarea individual, @Published de la propiedad isCompleted  permite a la vista TaskListView observar y actualizar automáticamente los cambios en el estado de completado de cada tarea individual.

class TaskDemo: Identifiable {
    var id = UUID()
    var title: String
    @Published var isCompleted: Bool
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
}
