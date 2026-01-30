//
//  ProfileView.swift
//  ProfileApp
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("About us",destination: AboutUsView())
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
