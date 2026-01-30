//
//  NavBarNoteApp.swift
//  navigationBarCustimazation
//
//  Created by Sumit Downey on 29/01/26.
//


import SwiftUI

struct Note: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var description: String
}

struct NavBarNoteApp: View {

    let notes: [Note] = [
        Note(title: "Grocery", description: "Milk, Veggies"),
        Note(title: "Revision", description: "Swift Notes"),
        Note(title: "Meeting", description: "8 PM Meeting"),
        Note(title: "Games", description: "RDR2, GTAV")
    ]

    @State private var selectedNotes: Set<Note> = []
    @State private var isSelectMode = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(notes) { note in
                    if isSelectMode {
                        NoteRow(
                            note: note,
                            isSelected: selectedNotes.contains(note)
                        )
                        .onTapGesture {
                            if selectedNotes.contains(note) {
                                selectedNotes.remove(note)
                            } else {
                                selectedNotes.insert(note)
                            }
                        }
                    } else {
                        NavigationLink {
                            NoteDetailView(note: note)
                        } label: {
                            NoteRow(note: note, isSelected: false)
                        }
                    }
                }
            }
            .navigationTitle("My Notes")
            .toolbar {

                // ✅ Fixed button text logic
                ToolbarItem(placement: .topBarTrailing) {
                    Button(isSelectMode ? "Cancel" : "Select") {
                        selectedNotes.removeAll()
                        isSelectMode.toggle()
                    }
                }

                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        // delete logic
                    } label: {
                        Image(systemName: "trash")
                    }
                    .disabled(selectedNotes.isEmpty)

                    Button {
                        // share logic
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .disabled(selectedNotes.isEmpty)
                }
            }
        }
    }
}

struct NoteRow: View {
    let note: Note
    let isSelected: Bool

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(note.title)
                    .font(.headline)
                Text(note.description)
                    .font(.caption)
            }
            Spacer()
            Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                .foregroundColor(.blue)
        }
    }
}

struct NoteDetailView: View {
    let note: Note

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(note.title)
                .font(.largeTitle)
            Text(note.description)
                .font(.body)
        }
        .padding()
        .navigationTitle("Note")
    }
}

#Preview {
    NavBarNoteApp()
}
