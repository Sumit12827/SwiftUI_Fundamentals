//
//  SwiftUIView.swift
//  swiftUI
//
//  Created by Sumit Downey on 10/12/25.
//

import SwiftUI

struct SwiftUIView: View {
    var currentStudent: Student = Student()
    var body: some View {
        VStack{
            HStack{
                Text(currentStudent.firstName)
                Text(currentStudent.lastName)
            }
            Text("\(currentStudent.age) yrs")
        }
    }
}

#Preview {
    SwiftUIView()
}
