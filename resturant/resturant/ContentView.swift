//
//  ContentView.swift
//  resturant
//
//  Created by Sumit Downey on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing){
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                
                
                Image(systemName: "circle.fill")
                    .foregroundStyle(.green)
                    .padding(5)
                    .border(Color.green, width: 3)
                    .offset(x: -10 , y: 10)

            }
            VStack(alignment: .leading){
                Text("rass malai")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Text("$12.00")
                    .foregroundColor(.black)
                
                Text("this is rass malai , a very tasty and healthy dish and very popular")
                    .foregroundStyle(.secondary)
            }
            
        }
        .padding()
        .background((.gray.opacity(0.3)))
        .frame(width: 380)
        
    }
}

#Preview {
    ContentView()
}
