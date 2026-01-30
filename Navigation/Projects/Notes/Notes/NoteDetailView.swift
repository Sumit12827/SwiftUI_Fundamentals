//
//  NoteDetailView.swift
//  Notes
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct NoteDetailView: View {
    var note: Note
    var body: some View {
        List {
            Section {
                Text(note.subtitle)
                    .font(.title)
                Text(note.description)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
            }
            .listRowSeparator(.hidden)
        }
        .navigationTitle(note.title)
    }
}

#Preview {
    NavigationStack {
        NoteDetailView(note: Note.sampleNotes[0])
    }
}
