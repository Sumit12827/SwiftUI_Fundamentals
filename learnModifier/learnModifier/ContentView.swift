//
//  ContentView.swift
//  learnModifier
//
//  Created by Sumit Downey on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome")
                .preview()
            Text("sdfghj")
                .preview()
            Text("adfg")
                .preview()
        }
        .padding()
    }
}

extension View{
    func preview() -> some View {
        modifier(Preview())
    }
}

struct Preview: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.red)
            .padding()
            .background(.yellow)
    }
}

#Preview {
    ContentView()
}
