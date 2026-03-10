//
//  ContentView.swift
//  forEachStarTask2
//
//  Created by Sumit Downey on 20/12/25.
//

import SwiftUI
struct ToDoTask: Identifiable {
    var id = UUID()
    var title: String
    var description: String
}
struct ContentView: View {
    
   @State var task  = [ToDoTask(title: "title" , description: "this is the description")]
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(task) { task in
                    VStack(alignment: .leading){
                        Text(task.title)
                            .bold()
                        Text(task.description)
                    }
                    .padding()
                    .background(.orange.opacity(0.3))
                }
            }
        }
        
        Button {
            task.append(ToDoTask(title: "Title", description: "thisi is the task"))
        } label: {
            Image(systemName: "plus")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.gray)
        }
        .padding()
        .background(.orange.opacity(0.3))
        .clipShape(.circle)
        
    }
}

#Preview {
    ContentView()
}
