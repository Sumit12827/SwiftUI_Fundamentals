//
//  RedLightView.swift
//  TrafficLight
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct RedLightView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            NavigationLink {
                YellowLightView()
            } label: {
                HStack {
                    Image(systemName: "circle.fill")
                    Text("Go to yellow")
                }
                .foregroundStyle(.yellow)
                .font(.largeTitle)
            }
        }
        .navigationTitle("Red Light")
    }
}

#Preview {
    NavigationStack {
        RedLightView()
    }
}
