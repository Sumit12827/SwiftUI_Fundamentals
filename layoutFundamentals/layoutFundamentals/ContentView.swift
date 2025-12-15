//
//  ContentView.swift
//  layoutFundamentals
//
//  Created by Sumit Downey on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image("Image")
//                .resizable()
//                .scaledToFit()
//                .frame(width:250 , height: 250 )
//                .clipShape(.circle)
//                .shadow(color: .black, radius: 20)
//            
//            Text("Sumit")
//                .font(.largeTitle)
//                .bold()
//            Text("23SCSE1011401")
//                .font(.headline)
//                .foregroundStyle(.secondary)
//            
//        }
//        .padding()
//        .background(.black.opacity(0.2))
//        .cornerRadius(40)
        
        
        
//        HStack {
//            Image("Image")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100 , height: 100)
//                .clipShape(.circle)
//            
//            Text("Sumit")
//                .font(.largeTitle)
//                .bold()
//            
//            Text("23SCSE1011401")
//                .font(.headline)
//                .foregroundStyle(.secondary)
//        }
        
        
        HStack(spacing: 1){
            Image(systemName: "star.fill")
                .font(.largeTitle)
            
            Text("4.2")
                .font(.title3)
        }
        
        
        HStack{
            Text("Expertise")
                .font(.title)
                .bold()
            Text(": SwiftUI , c++ , Python")
                .foregroundStyle(.tint)
        }
        
        
//        ZStack{
//            RoundedRectangle(cornerRadius: 12)
//                .fill(.blue)
//                .frame(width: 250, height: 250)
//                .zIndex(1)
//            
//            Image(systemName: "star")
//                .foregroundStyle(.white)
//                .font(.system(size: 80))
//                .bold()
//                .zIndex(3)
//            
//            
//            RoundedRectangle(cornerRadius: 40)
//                .fill(.red)
//                .frame(width: 150 , height: 150)
//                .zIndex(2)
//        }
        
        
        
//        ZStack (alignment: .bottomTrailing) {
//           Image("Image")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 300)
//            
//            Text("VEG")
//                .padding(4)
//                .background(.green.opacity(0.8))
//                .clipShape(.capsule)
//        }
        
        
        ZStack(alignment: .bottomTrailing){
            Image("Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width:250 , height: 250 )
                            .clipShape(.ellipse)
                            .shadow(color: .black, radius: 20)
            
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
                .offset(x: -40, y: -33)
            
            Image(systemName: "star.fill")
                .padding(6)
                .background(.green)
                .clipShape(.circle)
                .offset(x:-45 , y:-175)
            
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}
