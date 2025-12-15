//
//  ContentView.swift
//  swiftUI
//
//  Created by Sumit Downey on 09/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("students")
                .font(.largeTitle)
            SwiftUIView(currentStudent: Student(firstName: "ravi" , lastName: "sharma" , age: 20))
            
            SwiftUIView(currentStudent: Student(firstName: "shalini" , lastName: "verma" , age: 22))
            SwiftUIView(currentStudent: Student(firstName: "tarun" , lastName: "gupta" , age: 23))
           
            
           
            
           
        }
        
        
        
    }
}
    
    #Preview {
        ContentView()
    }

