//
//  EditProfileView.swift
//  formControls
//
//  Created on 2026-01-07.
//

import SwiftUI

struct EditProfileView: View {
    @Binding var profile: Profile
    
    let roles = ["Developer", "Designer", "Manager", "Tester", "Student"]
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                // TextField to edit name
                TextField("Name", text: $profile.name)
                
                // Stepper to change age
                Stepper("Age: \(profile.age)", value: $profile.age, in: 0...120)
            }
            
            Section(header: Text("Profile Settings")) {
                // Toggle for public/private
                Toggle("Public Profile", isOn: $profile.isPublic)
                
                // Picker to select role
                Picker("Role", selection: $profile.role) {
                    ForEach(roles, id: \.self) { role in
                        Text(role).tag(role)
                    }
                }
                .pickerStyle(.menu)
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        EditProfileView(profile: .constant(Profile(
            name: "John Doe",
            age: 25,
            isPublic: true,
            role: "Developer"
        )))
    }
}
