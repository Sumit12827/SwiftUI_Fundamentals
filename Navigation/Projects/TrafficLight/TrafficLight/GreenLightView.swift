//
//  GreenLightView.swift
//  TrafficLight
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct GreenLightView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
        }
        .navigationTitle("Green Light")
    }
}

#Preview {
    NavigationStack {
        GreenLightView()
    }
}
