//
//  TeamMemberView.swift
//  ProfileApp
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct TeamMemberView: View {
    var memberName:String = "John Doe"
    var memberDescription: String = "Illogical encyclopedia"
    var memberEmoji:String = "🧐"
    var body: some View {
        Text(memberEmoji)
            .font(.system(size: 100))
        Text(memberName)
            .font(.largeTitle)
        Text(memberDescription)
            .font(.subheadline)
    }
}

#Preview {
    TeamMemberView()
}
