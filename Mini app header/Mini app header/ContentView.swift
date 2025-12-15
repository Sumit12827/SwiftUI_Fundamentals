//
//  ContentView.swift
//  Mini app header
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color.red
                .frame(height:60)
                .overlay(){
                    Text("Team 20")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
