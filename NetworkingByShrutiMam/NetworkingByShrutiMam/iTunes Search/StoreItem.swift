
//
//  StoreItem.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 10/04/26.
//

import Foundation

struct StoreItem: Codable, Identifiable {

    var id: Int { trackId ?? UUID().hashValue }
    var trackId: Int?
    var name: String
    var artist: String
    var description: String
    var kind: String
    var artworkURL: URL

    enum CodingKeys: String, CodingKey {
        case trackId
        case name = "trackName"
        case artist = "artistName"
        case kind
        case description
        case artworkURL = "artworkUrl100"

        enum AdditionalKeys: String, CodingKey {
            case longDescription
        }
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.trackId = try? container.decode(Int.self, forKey: .trackId)
        self.name = try container.decode(String.self, forKey: .name)
        self.artist = try container.decode(String.self, forKey: .artist)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.artworkURL = try container.decode(URL.self, forKey: .artworkURL)

        if let desc = try? container.decode(String.self, forKey: .description) {
            self.description = desc
        } else {
            let additionalContainer = try decoder.container(keyedBy: CodingKeys.AdditionalKeys.self)
            self.description = (try? additionalContainer.decode(String.self, forKey: .longDescription)) ?? ""
        }
    }
}

struct SearchResponse: Codable {
    var results: [StoreItem]
}
