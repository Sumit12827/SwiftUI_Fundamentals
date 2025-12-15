//
//  ContentView.swift
//  Music album
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("music")
                .cornerRadius(5)
                .shadow(radius: 10)
        }
        
        VStack{
            Text("P-POP CULTURE")
                .bold(true)
            Text(" by Karan aujla")
                .foregroundStyle(.gray)
            
            Text("2025")
                .foregroundStyle(.white)
                .padding(10)
            
                .background(Color.blue)
                .cornerRadius(100)
            
//            VStack{
//                Color.blue
//                    .frame(width: 150 , height: 150)
//                    .cornerRadius(30)
//                    .shadow(radius: 10)
//                    .opacity(0.5)
//            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
