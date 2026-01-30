//
//  NoteListView.swift
//  Notes
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct NoteListView: View {
    var notes = Note.sampleNotes
    var body: some View {
        NavigationStack {
            List {
                ForEach(notes) { note in
                    NavigationLink {
                        NoteDetailView(note: note)
                    } label: {
                        NoteRowView(note: note)
                    }
                }
            }
            .navigationTitle("My Notes")
        }
    }
}

#Preview {
    NoteListView()
}
