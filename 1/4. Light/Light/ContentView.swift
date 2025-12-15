//
//  ContentView.swift
//  Light
//
//  Created by Shruti Sachdeva on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var isLightOn:Bool = true
    var body: some View {
        VStack {
            Color(isLightOn ? .blue : .white)
            Button("Switch \(isLightOn ? "OFF": "ON")"){
                isLightOn.toggle()
            }
            .buttonStyle(.borderedProminent)
                   
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
