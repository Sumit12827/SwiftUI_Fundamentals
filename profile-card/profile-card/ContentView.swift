//
//  ContentView.swift
//  profile-card
//
//  Created by Sumit Downey on 12/12/25.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
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
    var body: some View {

        VStack {

            
            ZStack {
                Image("Image")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())

                Text("💬")
                    .padding(6)
                    .background(Color.white)
                    .clipShape(Circle())
                    .offset(x: 40, y: -40)
            }

            
            Text("Sumit")
                .font(.title3)
                .bold()

          
            Text("23SCSE1011401")
                .font(.subheadline)
                .foregroundColor(.black.opacity(0.6))

            
            Text("Sumit, pursuing B.tech, School of Computer Science and Engineering.")
                .font(.footnote)
               
                 .padding(.horizontal)

            
            Text("Expertise")
                .font(.subheadline)
                .bold()
                .padding(.top, 6)

            
            HStack(spacing: 10) {
            Text("swift")
            Text("c++")
            Text("python")
            }

            
            Button(action: {}) {
                Text("Contact")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            .padding(.top, 6)

        }
        .padding()
        .background(Color.blue.opacity(0.4))
        .cornerRadius(20)
        .padding()
    }
}

#Preview {
    ContentView()
}

