//
//  ContentView.swift
//  forEachStarTask
//
//  Created by Sumit Downey on 20/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var rating = 1
    
    
    
    
    var body: some View {
//        HStack{
//            ForEach(1..<6) { i in
//                Button {
//                    rating = i
//                } label:{
//                   Image(systemName: "star")
//                        .font(.largeTitle)
//                        .symbolVariant(i <= rating ?
//                            .fill : .none)
//                }
//            }
//        }
        
        
        
//        ScrollView(.horizontal,showsIndicators: false){
//            HStack{
//                ForEach(1..<101) {i in
//                    Text("item no. \(i)")
//                        .bold()
//                        .padding()
//                        .background(.orange)
//                }
//            }
//        }
        
        ScrollView(showsIndicators: false){
            VStack{
                ForEach(1..<50) { i in
                    Text("Task title ")
                        .bold()
                        .padding()
                        .background(.mint .opacity(0.3))
                }
            }
        }
      
    }
}

#Preview {
    ContentView()
}
