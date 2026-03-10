//
//  contextValue.swift
//  CustomListRows
//
//  Created by Sumit Downey on 09/01/26.
//

import SwiftUI

struct ContextMenu: View {
    @State private var books: [Book] = DataModel.books
    var body: some View {
        List{
            ForEach(books) { book in
                BookRowView(book: book)
            }
            .contextMenu {
                Button {
                    
                } label: {
                    Label("Pin", systemImage: "pin")
                }
                
                Button{
                    
                } label: {
                    Label("Share", systemImage: "square.and.arrow,up")
                }
            }
        }
    }
}

#Preview {
    ContextMenu()
}
