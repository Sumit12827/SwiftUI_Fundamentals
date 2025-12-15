//
//  ContentView.swift
//  create a badge
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
//                .fill(Color.blue .opacity(0.9))
                .shadow(color: .black, radius: 10)
                .frame(width: 200 , height: 200)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
                .overlay(){
                    VStack{
                        Text("30")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                        
                        Text("min")
                            .foregroundColor(.white)
                    }
                }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
