
//
//  iTunesSearchViewModel.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import Foundation

@Observable
class ITunesSearchViewModel {

    var items: [StoreItem] = []
    var searchTerm: String = ""
    var selectedMediaType: MediaType = .movie
    var isLoading = false
    var errorMessage: String?

    // MARK: - MediaType

    enum MediaType: String, CaseIterable, Identifiable {
        case movie, music, software, ebook

        var id: String { rawValue }

        var label: String {
            switch self {
            case .movie:    "Movies"
            case .music:    "Music"
            case .software: "Apps"
            case .ebook:    "Books"
            }
        }
    }

    // MARK: - Search

    func search() async {
        let term = searchTerm.trimmingCharacters(in: .whitespaces)
        guard !term.isEmpty else { return }

        isLoading = true
        errorMessage = nil
        defer { isLoading = false }

        var components = URLComponents(string: "https://itunes.apple.com/search")!
        components.queryItems = [
            URLQueryItem(name: "term",  value: term),
            URLQueryItem(name: "media", value: selectedMediaType.rawValue),
            URLQueryItem(name: "lang",  value: "en_us"),
            URLQueryItem(name: "limit", value: "20")
        ]

        do {
            let (data, response) = try await URLSession.shared.data(from: components.url!)

            guard let http = response as? HTTPURLResponse,
                  http.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }

            let searchResponse = try JSONDecoder().decode(SearchResponse.self, from: data)
            items = searchResponse.results
        } catch {
            errorMessage = error.localizedDescription
            items = []
        }
    }
}
