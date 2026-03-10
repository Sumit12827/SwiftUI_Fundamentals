//
//  ContentView.swift
//  Task-remote @binding
//
//  Created by Sumit Downey on 07/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var isMusicOn = false
    var body: some View {
        VStack {
            
            Text("Now playing")
                .font(.title)
            
            Text(isMusicOn ? "music is on" : "music is off")
                .font(.headline)
            
            RemoteButton(isMusicOn : $isMusicOn)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct RemoteButton: View {
    @Binding var isMusicOn: Bool
    
    var body: some View{
        Button{
            isMusicOn.toggle()
        } label: {
            Image(systemName: isMusicOn ? "pause.fill" : "play.fill")
                .font(.largeTitle)
        }
    }
}
