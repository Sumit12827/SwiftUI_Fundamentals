//
//  ContentView.swift
//  modifier oder puzzle
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Team 20 is O")
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                .padding()
                .background(.black)
                .cornerRadius(20)
            
            
            Text("Team 20 is S")
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                .padding()
                .background(.black)
                .cornerRadius(20)
            
            
            Text("Team 20 is M")
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                .padding()
                .background(.black)
                .cornerRadius(20)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
