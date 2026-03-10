//
//  ContentView.swift
//  create a weather card
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 350 , height: 350)
                .cornerRadius(20)
                .overlay(){
                    Image("cloud")
                        .resizable()
                        .frame(width: 300 , height: 150)
                        .cornerRadius(20)
                    
                    Text("20 C")
                        .font(.system(size: 40, weight: .bold, design: .default))
                    
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
