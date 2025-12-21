//
//  ContentView.swift
//  forEachStarTask3
//
//  Created by Sumit Downey on 20/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("resturant")
            .bold()
            .font(Font.largeTitle)
        ScrollView {
            VStack(alignment: .leading){
                ForEach(1..<6) {
                    i in Text("resturant \(i)")
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(1..<10) {
                                k in Text("dish \(k)")
                                    .frame(width: 150,height : 150)
                                    .background(.red.opacity(0.4))
                                
                            }
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
