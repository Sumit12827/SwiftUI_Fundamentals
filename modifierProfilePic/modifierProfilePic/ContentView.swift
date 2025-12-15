//
//  ContentView.swift
//  modifierProfilePic
//
//  Created by Sumit Downey on 12/12/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .profilePicture()
                .padding()
            Image(systemName: "person.circle.fill")
                .profilePicture()
        }
        .padding()
    }
}

struct Profilemodifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 100 ))
            .clipShape(.circle)
            .overlay(Circle().stroke(.white , lineWidth: 3))
            .shadow(radius: 5)
    }
}

extension View {
    func profilePicture() -> some View {
        self.modifier(Profilemodifier())
    }
}
#Preview {
    ContentView()
}
