//
//  ContentView.swift
//  ForEach task 1
//
//  Created by Sumit Downey on 20/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var FriendList = ["sumit" ,"rohan" , "vishal" , "rahul"]
    var body: some View {
        ForEach(FriendList , id: \.self) { friend in Text(friend)
        }
        
        Button{
            print("button tapped")
            Friend(Friend : friend)
        } label: {
            Text("add friend")
                .frame(width: 100, height: 50)
                .foregroundStyle(.white)
                .background(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
