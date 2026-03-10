//
//  ContentView.swift
//  task-meal-List
//
//  Created by Sumit Downey on 08/01/26.
//

import SwiftUI

struct Book: Identifiable{
    var id = UUID()
    var name : String
}

struct BookCollection: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var books: [Book]
}

struct ContentView: View {
    var bookCollection = [BookCollection(name: "mystery books", description: "curate collection of mystery book", books: [Book(name: "the hobbit"),Book(name: "chachachoudhary")]) , BookCollection(name: "scifi" , description: "the best scifi books" , books: [Book(name: "the hobbit"),Book(name: "chacha choudhary") , Book(name: "I robot")])
                          
]
    
    

    

    
    @State private var newBook: String = ""
    var body: some View {
        VStack {
//            List{
//                Text("row 1")
//                Text("row 2")
//                Image("Image")
//                    .frame(height: 100)
//            }
            
            List{
                ForEach(bookCollection) { collection in
                    Section{
                        ForEach(collection.books) {
                            book in Text(book.name)
                        }
                    } header: {
                        Text(collection.name)
                            .foregroundStyle(.black)
                            .font(.title)
                            .bold()
                    } footer: {
                        Text(collection.description)
                    }
                }
                
                
            }
            
//            TextField("add a book" , text: $newBook)
//                .onSubmit {
//                    Books.append(Book(name: newBook))
//                }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}




