//
//  NetworkingByShrutiMamApp.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 09/04/26.
//

import SwiftUI

@main
struct NetworkingByShrutiMamApp: App {

    init() {
        // Increase cache capacity to avoid re-downloading artwork images.
        // 25 MB in memory, 50 MB on disk — same values as the book.
        URLCache.shared.memoryCapacity = 25_000_000
        URLCache.shared.diskCapacity   = 50_000_000
    }

    var body: some Scene {
        WindowGroup {
            StoreItemsList()
        }
    }
}
