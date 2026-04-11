//
//  StoreItemRow.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import SwiftUI

struct StoreItemRow: View {

    let item: StoreItem

    var body: some View {
        HStack(spacing: 12) {
            artwork
            textContent
        }
        .padding(.vertical, 4)
    }

    // MARK: - Subviews

    private var artwork: some View {
        AsyncImage(url: item.artworkURL) { phase in
            switch phase {
            case .empty:
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(.secondary)

            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(.rect(cornerRadius: 8))

            case .failure:
                Image(systemName: "photo.badge.exclamationmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(.red)

            @unknown default:
                EmptyView()
            }
        }
    }

    private var textContent: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(item.name)
                .font(.headline)
                .lineLimit(1)

            Text(item.artist)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(1)

            Text(item.kind)
                .font(.caption)
                .foregroundStyle(.tertiary)
        }
    }
}
