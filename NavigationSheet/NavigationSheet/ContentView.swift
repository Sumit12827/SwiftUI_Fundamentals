//
//  ContentView.swift
//  NavigationSheet
//
//  Created by Vanshika Pal on 30/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet: Bool = false
    var body: some View {
        NavigationStack {
            Text("Home Screen")
                .font(.largeTitle)
            Button("Show Details") {
                showSheet = true
            }
            
            .sheet(isPresented: $showSheet) {
                DetailView()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
