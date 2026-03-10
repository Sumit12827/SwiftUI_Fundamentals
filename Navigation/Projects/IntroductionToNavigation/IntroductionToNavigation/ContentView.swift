//
//  ContentView.swift
//  IntroductionToNavigation
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to second screen") {
                SecondView()
            }
            .font(.largeTitle)
        }
        .padding()
        .navigationTitle("Content View")
    }
}

#Preview {
    ContentView()
}
