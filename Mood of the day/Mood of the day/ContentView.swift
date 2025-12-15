//
//  ContentView.swift
//  Mood of the day
//
//  Created by Sumit Downey on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Text("Current MOOD")
//                .font(.largeTitle)
//                .foregroundStyle(.cyan)
//            
//            Image(systemName: "bed.double")
//                .font(.system(size: 50))
//                .foregroundColor(.yellow)
            
            
            Text("Sumit")
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                .bold()
            
            
            Text("Sumit tyagi")
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                .fontWeight(.thin)
            
            
            Text("""
                 swift Ui gices you the powerful tools to syle and structure your text.
""")
            .multilineTextAlignment(.center)
            .lineSpacing(10)
            .foregroundStyle(.blue)
            .kerning(1)
            
        }
        
        
        
 //      .padding(10)
//        .border(.cyan)

        
        .padding()
    }
}

#Preview {
    ContentView()
}
