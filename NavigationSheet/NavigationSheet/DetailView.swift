//
//  DetailView.swift
//  NavigationSheet
//
//  Created by Vanshika Pal on 30/01/26.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is a sheet")
                    .font(.largeTitle)
                    .padding()
            }
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    DetailView()
}
