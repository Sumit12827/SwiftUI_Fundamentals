//
//  ContentView.swift
//  counter
//
//  Created by Sumit Downey on 10/12/25.
//
//
//import SwiftUI
//
//struct ContentView: View {
//   @State var state: Bool = true
//    @State var text: String = "OFF"
//    var body: some View {
//        
//        VStack {
//            Text("Light is \(text)")
//                .font(.largeTitle)
//            Button("switch \(text)") {
//                if(state == true){
//                    state = false
//                    text = "OFF"
//
//                } else{
//                  state = true
//                    text = "on"
//                    
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}




import SwiftUI

struct ContentView: View {
    @State var light: Bool = false
    var body: some View {
        light ? Color.black : Color.white
        VStack {
            Button("Switch \(light ? "on" : "off")"){
                light.toggle()
            }
            .padding()
            .border(Color.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
