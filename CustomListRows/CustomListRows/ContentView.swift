//
//  ContentView.swift
//  CustomListRows
//
//  Created by Probeer on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    var books: [Book] =  DataModel.books
    
    var body: some View {
        List {
            ForEach(books) { book in
                BookRowView(book: book)
            }
        }
    }
}

#Preview {
    ContentView()
}
