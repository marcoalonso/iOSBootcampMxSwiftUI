//
//  TaskList.swift
//  TasksDemo
//
//  Created by Marco Alonso Rodriguez on 07/05/23.
//

import Foundation
import SwiftUI

/// - Esta clase será un objeto observable y deberá publicar un listado de tareas como Published para que las vistas que la observan puedan actualizarse automáticamente cuando cambia

class TaskList: ObservableObject {
    @Published var tasks: [TaskDemo] = []
    
    func addTask(title: String) {
        tasks.append(TaskDemo(title: title))
    }
    
    func deleteTask(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
    
    func updateTask(task: TaskDemo) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index] = task
        }
    }
}

