//
//  ContentView.swift
//  GuardsPhotosOthersession
//
//  Created by Sumit Downey on 06/02/26.
//
import SwiftUI

struct ContentView: View {

    let minValue: Double = 20
    let maxValue: Double = 150
    let currentValue: Double = 35

    var progress: Double {
        (currentValue - minValue) / (maxValue - minValue)
    }

    var body: some View {
        VStack(spacing: 30) {

            Text("Gauge")
                .font(.largeTitle)
                .bold()

            Text("Lab: Vitamin D Level")
                .font(.title3)

            VStack(spacing: 8) {
                Text("Displays a Vitamin D level indicator using a circular SwiftUI Gauge.")
                Text("Shows the current value in ng/ml with minimum and maximum reference values.")
                Text("Uses a gradient-tinted circular gauge to represent the vitamin range visually.")
            }
            .font(.footnote)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)

            Spacer()

            Text("Vitamin D")
                .font(.headline)

            ZStack {
                Circle()
                    .trim(from: 0, to: 0.75)
                    .stroke(Color.gray.opacity(0.2),
                            style: StrokeStyle(lineWidth: 14, lineCap: .round))
                    .rotationEffect(.degrees(135))

                Circle()
                    .trim(from: 0, to: progress * 0.75)
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(colors: [.red, .yellow, .green]),
                            center: .center
                        ),
                        style: StrokeStyle(lineWidth: 14, lineCap: .round)
                    )
                    .rotationEffect(.degrees(135))

                VStack {
                    Text("\(Int(currentValue))")
                        .font(.title)
                        .bold()
                    Text("ng/ml")
                        .font(.caption)
                }
            }
            .frame(width: 180, height: 180)

            HStack {
                Text("\(Int(minValue))")
                Spacer()
                Text("\(Int(maxValue))")
            }
            .font(.caption)
            .frame(width: 160)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
