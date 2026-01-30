import SwiftUI

// MARK: - Model
struct Photo: Identifiable, Hashable {
    let id = UUID()
    let systemImage: String
}

// MARK: - Main View
struct PhotoStyleApp: View {

    let photos: [Photo] = [
        Photo(systemImage: "photo"),
        Photo(systemImage: "photo.fill"),
        Photo(systemImage: "photo.on.rectangle"),
        Photo(systemImage: "photo.circle")
    ]

    @State private var selectedPhotos: Set<Photo> = []
    @State private var isSelectionMode = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(photos) { photo in
                        NavigationLink {
                            PhotoDetailView(photo: photo)
                        } label: {
                            PhotoCard(
                                photo: photo,
                                isSelected: selectedPhotos.contains(photo),
                                isSelectionMode: isSelectionMode
                            )
                        }
                        .simultaneousGesture(
                            TapGesture().onEnded {
                                if isSelectionMode {
                                    toggleSelection(photo)
                                }
                            }
                        )
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Photos")
            .navigationBarTitleDisplayMode(.large)

          
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(isSelectionMode ? "Cancel" : "Select") {
                        selectedPhotos.removeAll()
                        isSelectionMode.toggle()
                    }
                }

                
                ToolbarItemGroup(placement: .bottomBar) {
                    if isSelectionMode {
                        Button {
                            // Delete
                        } label: {
                            Image(systemName: "trash")
                        }
                        .disabled(selectedPhotos.isEmpty)

                        Spacer()

                        Button {
                            // Share
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .disabled(selectedPhotos.isEmpty)

                        Spacer()

                        Button {
                            // Favorite
                        } label: {
                            Image(systemName: "heart")
                        }
                        .disabled(selectedPhotos.isEmpty)
                    }
                }
            }
        }
    }

    
    private func toggleSelection(_ photo: Photo) {
        if selectedPhotos.contains(photo) {
            selectedPhotos.remove(photo)
        } else {
            selectedPhotos.insert(photo)
        }
    }
}


struct PhotoCard: View {

    let photo: Photo
    let isSelected: Bool
    let isSelectionMode: Bool

    var body: some View {
        ZStack(alignment: .topTrailing) {

            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue.opacity(0.85))
                .frame(height: 220)
                .overlay(
                    Image(systemName: photo.systemImage)
                        .resizable()
                        .scaledToFit()
                        .padding(40)
                        .foregroundColor(.white)
                )

            if isSelectionMode {
                Image(systemName: isSelected
                      ? "checkmark.circle.fill"
                      : "circle")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(12)
            }
        }
    }
}

// MARK: - Detail Screen
struct PhotoDetailView: View {

    let photo: Photo

    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.blue)
                .frame(height: 300)
                .overlay(
                    Image(systemName: photo.systemImage)
                        .resizable()
                        .scaledToFit()
                        .padding(50)
                        .foregroundColor(.white)
                )

            Text("Photo Details")
                .font(.title3)
        }
        .padding()
        .navigationTitle("Photo Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}


// MARK: - Preview
#Preview {
    PhotoStyleApp()
}
