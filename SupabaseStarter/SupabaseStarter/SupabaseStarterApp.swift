//
//  SupabaseStarterApp.swift
//  SupabaseStarter
//
//  Created by Shruti Sachdeva on 16/04/26.
//

import SwiftUI

@main
struct SupabaseStarterApp: App {
    @State var toDoTaskViewModel = ToDoTaskViewModel()
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environment(toDoTaskViewModel)
        }
    }
}
