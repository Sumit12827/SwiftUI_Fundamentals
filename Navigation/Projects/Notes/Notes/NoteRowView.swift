//
//  NoteRowView.swift
//  Notes
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct NoteRowView: View {
    var note: Note
    var body: some View {
        HStack {
            Image(systemName: "rectangle.fill")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(note.title)
                    .font(.headline)
                Text(note.subtitle)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    NoteRowView(note: Note.sampleNotes[0])
}
