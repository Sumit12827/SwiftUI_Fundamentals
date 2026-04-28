import SwiftUI
import UIKit

enum NavigationBarAppearanceConfigurator {

    static func apply() {
        let titleColor = UIColor.white

        // MARK: - Scroll Edge (at rest, large title visible)
        // Fully transparent — content shows through without any blur or tint.
        let scrollEdge = UINavigationBarAppearance()
        scrollEdge.configureWithTransparentBackground()
        scrollEdge.backgroundColor = .clear
        scrollEdge.backgroundEffect = nil
        scrollEdge.shadowColor = .clear
        scrollEdge.largeTitleTextAttributes = [
            .foregroundColor: titleColor
        ]
        scrollEdge.titleTextAttributes = [
            .foregroundColor: titleColor
        ]

        // MARK: - Standard (collapsed, after scroll)
        // Default native iOS blur and behavior.
        let standard = UINavigationBarAppearance()
        standard.configureWithDefaultBackground()
        standard.titleTextAttributes = [
            .foregroundColor: titleColor
        ]
        standard.largeTitleTextAttributes = [
            .foregroundColor: titleColor
        ]

        let navbar = UINavigationBar.appearance()
        navbar.standardAppearance = standard
        navbar.compactAppearance = standard
        navbar.scrollEdgeAppearance = scrollEdge
        navbar.compactScrollEdgeAppearance = scrollEdge
        navbar.prefersLargeTitles = true
        navbar.tintColor = titleColor
    }
}
