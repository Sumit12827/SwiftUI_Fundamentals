//
//  ContentView.swift
//  IndianPlacesExplorer
//
//  Created by kiran singh on 30/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedPlace: Place?
    @State private var showAlert = false
    @State private var alertPlace: Place?

    var body: some View {
        NavigationStack {
            List(places) { place in
                HStack(spacing: 16) {
                    Image(place.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 8))

                    Text(place.name)
                        .font(.headline)
                }
                .padding(.vertical, 4)
                .contentShape(Rectangle())
                
                .onTapGesture {
                    selectedPlace = place
                }
                .onLongPressGesture {
                    alertPlace = place
                    showAlert = true
                }
            }
            .navigationTitle("Explore India")
//            .sheet(item: $selectedPlace) { place in
//                PlaceDetailSheet(place: place)
//            }
            .sheet(item: $selectedPlace) { place in
                PlaceDetailSheet(place: place)
                    .presentationDetents([.medium, .large,
//                                          .custom(CustomDetent.self)
                                                 ])
                    .presentationDragIndicator(.visible)
            }
            .alert("Place Selected", isPresented: $showAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                if let alertPlace = alertPlace {
                    Text(alertPlace.name)
                }
            }
            .alert("Place Selected", isPresented: $showAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                if let alertPlace = alertPlace {
                    Text(alertPlace.name)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
