//
//  ContentView.swift
//  parent&child
//
//  Created by Sumit Downey on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
         Text("Title")
                .font(.title)
                .foregroundStyle(.blue)
                .background(.red)
            
            Text("subtitle")
                .foregroundStyle(.green)
        }
        .padding()
        .background(.yellow)
    }
}

#Preview {
    ContentView()
}
