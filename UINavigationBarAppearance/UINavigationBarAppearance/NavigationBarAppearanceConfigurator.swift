import SwiftUI
import UIKit

enum NavigationBarAppearanceConfigurator {
    static func apply() {
        let titleColor = UIColor.white

        let transparent = UINavigationBarAppearance()
        transparent.configureWithTransparentBackground()
        transparent.backgroundColor = .clear
        transparent.backgroundEffect = nil
        transparent.shadowColor = .clear
        transparent.titleTextAttributes = [
            .foregroundColor: titleColor
        ]
        transparent.largeTitleTextAttributes = [
            .foregroundColor: titleColor
        ]

        let blurred = UINavigationBarAppearance()
        blurred.configureWithTransparentBackground()
        blurred.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        blurred.backgroundColor = UIColor.black.withAlphaComponent(0.22)
        blurred.shadowColor = UIColor.white.withAlphaComponent(0.12)
        blurred.titleTextAttributes = [
            .foregroundColor: titleColor
        ]
        blurred.largeTitleTextAttributes = [
            .foregroundColor: titleColor
        ]

        UINavigationBar.appearance().standardAppearance = blurred
        UINavigationBar.appearance().compactAppearance = blurred
        UINavigationBar.appearance().scrollEdgeAppearance = transparent
        UINavigationBar.appearance().compactScrollEdgeAppearance = transparent
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().tintColor = titleColor
    }
}
