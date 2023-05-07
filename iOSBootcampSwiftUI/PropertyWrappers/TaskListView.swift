//
//  TaskListView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 07/05/23.
//

import SwiftUI
///  Cuando el usuario agrega una nueva tarea, la función addTask de TaskList se llama para agregar la nueva tarea a la lista.
/// * La vista también muestra una lista de todas las tareas en TaskList. Cada tarea se representa como un objeto Task, y se utiliza @ObservedObject para observar cualquier cambio en cada tarea individual. Si el usuario marca una tarea como completada o la elimina, la vista se actualiza automáticamente gracias al uso de @ObservedObject.

struct TaskListView: View {
    /// -* Esta clase utiliza @ObservedObject para observar los cambios en el objeto taskList.
    @ObservedObject var taskList = TaskList()
    
    /// - * También utiliza @State para almacenar el título de la nueva tarea que el usuario quiere agregar.
    @State var newTaskTitle: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("New Task", text: $newTaskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    taskList.addTask(title: newTaskTitle)
                    newTaskTitle = ""
                }, label: {
                    Text("Add")
                })
            }.padding()
            
            List {
                ForEach(taskList.tasks) { task in
                    HStack {
                        Image(systemName: task.isCompleted ? "checkmark.square" : "square")
                            .foregroundColor(task.isCompleted ? .green : .red)
                            .onTapGesture {
                                let updatedTask = task
                                updatedTask.isCompleted.toggle()
                                taskList.updateTask(task: updatedTask)
                            }
                        Text(task.title)
                    }
                }
                .onDelete(perform: taskList.deleteTask)
            }
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
