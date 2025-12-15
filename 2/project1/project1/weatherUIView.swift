//
//  weatherUIView.swift
//  project1
//
//  Created by Sumit Downey on 10/12/25.
//

import SwiftUI

struct weatherUIView: View {
    var currentDay: DailyData = DailyData()
    var body: some View {
        VStack{
            Text(currentDay.day)
            Text(currentDay.weather)
            Text("Low \(currentDay.lowestTemp)")
            Text("high \(currentDay.highestTemp)")
        }
        .padding(20)
        .border(Color .blue)
    }
}

#Preview {
    weatherUIView()
}
