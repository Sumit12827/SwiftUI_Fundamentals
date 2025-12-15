//
//  ContentView.swift
//  Image modifier
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Moon")
                .resizable()
                .scaledToFit()
                .frame(width:160)
                .clipShape(Circle())
            
            
            
            Image("Moon")
                .resizable()
                .scaledToFit()
                .frame(width:160)
                .clipShape(Circle())
                .overlay(Circle().stroke(.blue , lineWidth: 6))
//                .border(.blue , width: 6)
//                .cornerRadius(100)
            
            
            
            
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
