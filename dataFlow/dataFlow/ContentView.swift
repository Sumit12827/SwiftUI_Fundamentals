//
//  ContentView.swift
//  dataFlow
//
//  Created by Sumit Downey on 07/01/26.
//

import SwiftUI

struct ContentView: View {
   @State var selected: Bool = true
    var body: some View {
        VStack {
            Button(action:{
                selected.toggle()
            } , label: {
                Text("toggle")
            })
            Text("Hello, world!")
                .background(selected ? Color.red : Color.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
