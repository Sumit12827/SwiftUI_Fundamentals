//
//  YellowLightView.swift
//  TrafficLight
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct YellowLightView: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            NavigationLink("Go to green", destination: GreenLightView())
        }
        .navigationTitle("Yellow Light")
    }
}

#Preview {
    NavigationStack {
        YellowLightView()
    }
}
