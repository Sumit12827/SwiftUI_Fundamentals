//
//  ContentView.swift
//  TrafficLight
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Start the traffic light") {
                RedLightView()
            }
            .navigationTitle("Traffic light")
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
