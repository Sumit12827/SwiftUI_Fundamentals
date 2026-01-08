//
//  ContentView.swift
//  friends-dynamic-List
//
//  Created by Sumit Downey on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private  var Friends = ["rohan" , "rohan" , "rohan" , "rohan"]
    
    @State private var newFriend: String = ""
    var body: some View {
        VStack {
            List(Friends , id: \.self){
                friend in Text(friend)
            }
            
            TextField("add a friend" , text: $newFriend)
                .onSubmit {
                    Friends.append(newFriend)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
