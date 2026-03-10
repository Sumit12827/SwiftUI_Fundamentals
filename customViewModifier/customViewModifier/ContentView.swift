//
//  ContentView.swift
//  customViewModifier
//
//  Created by Sumit Downey on 12/12/25.
//

import SwiftUI

//struct Title: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .foregroundStyle(.red)
//            .font(.title)
//            .padding()
//            .background(.yellow)
//    }
//}

//extension View {
//    func titleStyle() -> some View {
//        self.modifier(Title())
//    }
//}


struct ContentView: View{
    var body: some View {
        Color.blue
            .frame(width: 300 , height: 200)
            .watermarked(with: "haking with swift")
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment: .bottomTrailing){
                Text(text)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.black)
            }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(watermarked(with: text))
    }
}



#Preview {
    ContentView()
}

