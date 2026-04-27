//
//  UINavigationBarAppearanceApp.swift
//  UINavigationBarAppearance
//
//  Created by Sumit on 27/04/26.
//

import SwiftUI

@main
struct UINavigationBarAppearanceApp: App {
    init() {
        NavigationBarAppearanceConfigurator.apply()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
