//
//  CustomDetent.swift
//  IndianPlacesExplorer
//
//  Created for Sheet & Detents Activity - Task 4
//

import SwiftUI


struct CustomDetent: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        return context.maxDetentValue * 0.75
    }
}
