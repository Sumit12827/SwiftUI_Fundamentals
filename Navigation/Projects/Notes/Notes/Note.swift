//
//  Note.swift
//  Notes
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import Foundation

struct Note: Identifiable {
    var id: String {
        title + subtitle + description
    }
    var title: String
    var subtitle: String
    var description: String
    
    static let sampleNotes: [Note] = [
        Note(title: "Title 1", subtitle: "Subtitle 1", description: "Description 1"),
        Note(title: "Title 2", subtitle: "Subtitle 2", description: "Description 2"),
        Note(title: "Title 3", subtitle: "Subtitle 3", description: "Description 3"),
        Note(title: "Title 4", subtitle: "Subtitle 4", description: "Description 4"),
        Note(title: "Title 5", subtitle: "Subtitle 5", description: "Description 5"),
    ]
}

