//
//  ToDoTaskViewModel.swift
//  SupabaseStarter
//
//  Created by Shruti Sachdeva on 16/04/26.
//

import Foundation
import SwiftUI

@Observable
class ToDoTaskViewModel {
    var toDos:[ToDoTask] = []
    var errorMessage: String?
    static let preview = ToDoTask(id: UUID(), title: "Some task", description: "Some Description", dueDate: Date.now, status: .completed)
    
    init() {
        fetchToDos()
    }
    
    func fetchToDos() {
        toDos = [
            ToDoTask(id: UUID(), title: "Buy groceries", description: "Milk, Eggs, Bread & Butter", dueDate: DateComponents(calendar: .current,year: 2026, month: 4, day: 1).date!, status: .notStarted),
            ToDoTask(id: UUID(), title: "Study Swift", description: "Supabase Integration", dueDate: DateComponents(calendar: .current,year: 2026, month: 3, day: 22).date!, status: .notStarted)
        ]
    }
    
    func update(oldTaskId: UUID, with newTask: ToDoTask) {
        if let index = toDos.firstIndex(where: { toDo in
            toDo.id == oldTaskId
        }) {
            toDos[index] = newTask
            print("Task Updated")
        } else {
            print("Unable to update the task")
        }
    }
    
    func createTask(title: String, description: String, dueDate: Date, status: Status) {
        let newTask = ToDoTask(id: UUID(), title: title, description: description, dueDate: dueDate, status: status)
        toDos.append(newTask)
        print("New Task created")
    }
    
    func delete(at offsets: IndexSet) {
        toDos.remove(atOffsets: offsets)
    }
}

