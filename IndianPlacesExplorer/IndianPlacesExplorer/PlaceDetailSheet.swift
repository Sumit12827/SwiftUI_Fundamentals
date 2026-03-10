//
//  PlaceDetailSheet.swift
//  IndianPlacesExplorer
//
//  Created for Sheet & Detents Activity
//

import SwiftUI

struct PlaceDetailSheet: View {
    let place: Place
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Image(place.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                
                Text(place.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Text(place.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                
            }.padding() .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                }
            
        }
    }
}

#Preview {
    PlaceDetailSheet(place: places[0])
}
