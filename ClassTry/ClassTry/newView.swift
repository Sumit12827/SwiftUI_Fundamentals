//
//  newView.swift
//  ClassTry
//
//  Created by Sumit on 07/04/26.
//

import SwiftUI

// Simple async function to satisfy the call in .task
func getValue() async throws -> String {
    // Simulate some asynchronous work
    try await Task.sleep(nanoseconds: 300_000_000)
    return "Fetched value"
}

struct newView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .task{
                do{
                    let value = try await getValue()
                    print("value: \(value)")
                } catch{
                    print("error: \(error)")
                }
            }
    }
}

#Preview {
    newView()
}
