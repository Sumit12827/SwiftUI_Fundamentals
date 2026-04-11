//
//  StoreItemsList.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import SwiftUI

struct StoreItemsList: View {

    @State private var viewModel = ITunesSearchViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                mediaPicker
                resultsArea
            }
            .navigationTitle("iTunes Search")
            .searchable(
                text: $viewModel.searchTerm,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Movies, music, apps, books..."
            )
            .onSubmit(of: .search) {
                Task { await viewModel.search() }
            }
            .onChange(of: viewModel.selectedMediaType) {
                guard !viewModel.searchTerm.isEmpty else { return }
                Task { await viewModel.search() }
            }
        }
    }

    // MARK: - Subviews

    private var mediaPicker: some View {
        Picker("Media Type", selection: $viewModel.selectedMediaType) {
            ForEach(ITunesSearchViewModel.MediaType.allCases) { type in
                Text(type.label).tag(type)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)
        .padding(.top, 8)
    }

    @ViewBuilder
    private var resultsArea: some View {
        if viewModel.isLoading {
            Spacer()
            ProgressView("Searching...")
            Spacer()
        } else if let error = viewModel.errorMessage {
            Spacer()
            ContentUnavailableView(
                error,
                systemImage: "exclamationmark.triangle"
            )
            Spacer()
        } else if viewModel.items.isEmpty, !viewModel.searchTerm.isEmpty {
            Spacer()
            ContentUnavailableView.search(text: viewModel.searchTerm)
            Spacer()
        } else {
            List(viewModel.items) { item in
                StoreItemRow(item: item)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    StoreItemsList()
}
