import SwiftUI
import PhotosUI

struct PhotosView: View {

    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedImage: Image?

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            if let selectedImage {
                selectedImage
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            } else {
                ContentUnavailableView {
                    Image(systemName: "magnifyingglass")
                } description: {
                    Text("No images yet")
                } actions: {
                    PhotosPicker(
                        selection: $selectedItem,
                        matching: .images,
                        photoLibrary: .shared()
                    ) {
                        Text("Select an image")
                            .fontWeight(.medium)
                    }
                }
            }

            Spacer()
        }
        .padding()
        .onChange(of: selectedItem) { newItem in
            guard let newItem else { return }

            Task {
                do {
                    if let data = try await newItem.loadTransferable(type: Data.self),
                       let uiImage = UIImage(data: data) {
                        selectedImage = Image(uiImage: uiImage)
                    }
                } catch {
                    print("Image loading failed:", error)
                }
            }
        }
    }
}

#Preview {
    PhotosView()
}

