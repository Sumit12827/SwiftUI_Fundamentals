//
//  ProfileSummaryView.swift
//  formControls
//
//  Created on 2026-01-07.
//

import SwiftUI

struct ProfileSummaryView: View {
    @State private var profile = Profile(
        name: "John Doe",
        age: 25,
        isPublic: true,
        role: "Developer"
    )
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // Profile Summary Card
                VStack(alignment: .leading, spacing: 12) {
                    Text("Profile Summary")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Divider()
                    
                    HStack {
                        Text("Name:")
                            .fontWeight(.semibold)
                        Spacer()
                        Text(profile.name)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Age:")
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(profile.age)")
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Role:")
                            .fontWeight(.semibold)
                        Spacer()
                        Text(profile.role)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Status:")
                            .fontWeight(.semibold)
                        Spacer()
                        HStack {
                            Image(systemName: profile.isPublic ? "globe" : "lock.fill")
                            Text(profile.isPublic ? "Public" : "Private")
                        }
                        .foregroundColor(profile.isPublic ? .green : .orange)
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemGray6))
                )
                .padding(.horizontal)
                
                // Navigation to Edit Profile
                NavigationLink(destination: EditProfileView(profile: $profile)) {
                    Text("Edit Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Mission Control")
            .padding(.top)
        }
    }
}

#Preview {
    ProfileSummaryView()
}
