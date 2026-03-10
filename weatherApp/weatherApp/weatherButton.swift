//
//  weatherButton.swift
//  weatherApp
//
//  Created by Sumit Downey on 17/12/25.
//
import SwiftUI
import Foundation

struct WeatherButton: View {

    var title: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundColor(textColor)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .cornerRadius(12)
    }
}
