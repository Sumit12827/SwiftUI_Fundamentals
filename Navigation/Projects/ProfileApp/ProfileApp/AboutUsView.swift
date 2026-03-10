//
//  AboutUsView.swift
//  ProfileApp
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        List {
            ZStack {
                Color.mint
                Image(systemName: "graduationcap.fill")
                    .font(.system(size: 60))
            }
            .frame(height: 200)
            .padding()
            Text("We are a team of 3 developers who met in a college canteen while avoiding a Data Structures assignment.")
                .font(.title2)
                .multilineTextAlignment(.leading)
            
            Section {
                NavigationLink("John Doe", destination: TeamMemberView())
            } header: {
                Text("Team members")
            }
        }
    }
}

#Preview {
    NavigationStack {
        AboutUsView()
    }
}
