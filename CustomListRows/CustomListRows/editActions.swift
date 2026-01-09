//
//  editActions.swift
//  CustomListRows
//
//  Created by Sumit Downey on 09/01/26.
//

import SwiftUI

struct editActions: View {
    @State private var books: [Book] =
    DataModel.books
    var body: some View {
        
        NavigationStack {
            List($books , editActions: .all) {$book in
                BookRowView(book: book)
            }
            .toolbar{
                EditButton()
            }
        }
    }
    
        
}

#Preview {
    editActions()
}
