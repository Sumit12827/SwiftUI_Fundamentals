//
//  ContentView.swift
//  Additional Task 1
//
//  Created by Sumit Downey on 20/12/25.
//

import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

struct ProfileView: View {
    var student: Student
    
    var students = [Student(image: "Image", name: "sumit"),
    Student(image: "Image", name: "sumit"),
    Student(image: "Image", name: "sumit"),
    Student(image: "Image", name: "sumit"),
    Student(image: "Image", name: "sumit")]
    
    var body: some View {
        ForEach(1..<6) { student in
            ProfileView(student: student)
        }
        
        
    }

        
}
   




#Preview {
    ProfileView()
}
