//
//  swipeAction.swift
//  CustomListRows
//
//  Created by Sumit Downey on 09/01/26.
//

import SwiftUI

struct SwipeActions: View {
    @State private var books: [Book] = DataModel.books
    var body: some View {
        
        List {
            ForEach(books) { book in
                BookRowView(book: book)
            }
            .swipeActions(edge: .leading) {
                Button {
                    
                } label: {
                    Image(systemName: "star.fill")
                }
                .tint(.accentColor)
                
                Button {
                    
                } label: {
                    Image (systemName: "circle.fill")
                }
                .tint(.accentColor)
                
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button (role: .destructive){
                    
                }label: {
                    Image(systemName: "trash")
                }
                .tint(.red)
                
                Button {
                    
                } label: {
                    Image(systemName: "pin")
                }
            }
        }
    }
}

#Preview {
    SwipeActions()
}
