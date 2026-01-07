//
//  ContentView.swift
//  Task-now Driven by state
//
//  Created by Sumit Downey on 07/01/26.
//

import SwiftUI

struct ContentView: View {
//    
//    let states = ["stopped" , "buffering"  , " palying "]
//    @State var currentIndex = 0
//    var body: some View {
//        VStack {
//            Text("Swift UI beats")
//                .font(.title)
//            
//            Text("status: \(states[currentIndex])")
//                .font(.headline)
//            
//            Button("next step"){
//                currentIndex = (currentIndex + 1) % states.count
//            }
//        }
//        .padding()
//    }
    
    
    @State private var selected: Bool = false
    
    var body: some View {
        VStack{
            Button(action: {
                selected.toggle()
            } , label: {
                Text("toggle")
            })
            
            StylishText(selected: selected)
            Text("Hello world")
                .background(selected ? Color.red : Color.blue)
        }
    }
}


#Preview {
    ContentView()
}

struct StylishText: View{
    @State var selected : Bool = false
    
    var body: some View{
        Text("hello world")
            .background(selected ? Color.red : Color.blue)
    }
}

