//
//  ContentView.swift
//  memories
//
//  Created by Sumit Downey on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack (alignment: .topTrailing){
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    
                
                
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .padding()
                    .background(.yellow)
                    .clipShape(.circle)
                    .offset(x: -10 , y: 30)
            }
            
            VStack(alignment: .leading){
                HStack{
                    Text("bruno is vary happy")
                        .font(.headline)
                        .bold()
                    
                    Label("12th dec 2025" , systemImage: "calender")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                
                Text("Dog is very happy > dog is very happy . dog is very happy . dog is very happy")
            }
            .padding()
        }
        .frame(width: 380)
        .background(.thinMaterial)
       
        .clipShape(.rect(cornerRadius: 20))
        
    }
        
}

#Preview {
    ContentView()
}

