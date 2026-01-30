//
//  DetentDemoView.swift
//  NavigationSheet
//
//  Created by Vanshika Pal on 30/01/26.
//

import SwiftUI

struct DetentDemoView: View {
    @State private var showMediumSheet = false
    @State private var showLargeSheet = false
    
    
    var body: some View {
        VStack {
            Button("Show Medium Sheet") {
                showMediumSheet = true
            }
            Button("Show Large Sheet") {
                showLargeSheet = true
            }
            
            .sheet(isPresented: $showMediumSheet) {
                MediumSheet().body.presentationDetents([.fraction(0.4)])
            }
        }
    }
}


struct MediumSheet {
    var body: some View {
        Text("Hey this is a medium sheet")
    }
}


#Preview {
    DetentDemoView()
}
