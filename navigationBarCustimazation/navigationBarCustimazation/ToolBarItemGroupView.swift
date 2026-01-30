//
//  ToolBarItemGroupView.swift
//  navigationBarCustimazation
//
//  Created by Sumit Downey on 29/01/26.
//

import SwiftUI

struct ToolBarItemGroupView: View {
    @State private var text = ""
    @State private var fontSize = 12.0
    @State private var bold = false
    @State private var italic = false
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $text)
                    .font(.system(size:CGFloat(fontSize) , weight: bold ? .bold : .regular))
                    .italic(italic)
            }
            .navigationTitle("note")
            .toolbar{
                ToolbarItemGroup(placement: .topBarTrailing){
                    Slider(value: $fontSize , in: 8...40){
                        Text("font size")
                    }
                    .frame(width:150)
                    Toggle(isOn: $bold){
                        Image(systemName: "bold")
                    }
                    .toggleStyle(.button)
                    Toggle(isOn: $italic){
                        Image(systemName: "italic")
                    }
                    .toggleStyle(.button)
                }
            }
        }
    }
}

#Preview {
    ToolBarItemGroupView()
}
