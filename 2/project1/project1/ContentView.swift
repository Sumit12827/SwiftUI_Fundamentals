//
//  ContentView.swift
//  project1
//
//  Created by Sumit Downey on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
        
        VStack{
            Text("Weekly Weather")
                .font(.largeTitle)
            
            weatherUIView(currentDay: DailyData(day: "Mon", weather: "Rainy", lowestTemp: 20, highestTemp: 30))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
