//
//  CustomDetent.swift
//  NavigationSheet
//
//  Created by Vanshika Pal on 30/01/26.
//

import SwiftUI

struct CustomDetent: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        return context.maxDetentValue-300
    }
    
}

struct CustomDetentView: View {
    @State private var showSheet = false
    var body: some View {
        Button("Show Custom Sheet") {
            showSheet = true
        }
        
        .alert(
            "Action Completed",
            isPresented: $showSheet,
            actions: {
                Button("Retry") {
                    
                }
                Button("Cancel", role: .cancel) {}
            },
            message: {
                Text("You have successfully completed the action!")
            }
        )
        
        
//        .sheet(isPresented: $showSheet) {
//            Text("Custom Detent with logic")
//                .font(.title)
//                .presentationDetents([.custom(CustomDetent.self)])
//        }
//        .presentationDragIndicator(.visible)
    }
}

#Preview {
    CustomDetentView()
}
