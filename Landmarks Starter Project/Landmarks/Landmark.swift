//
//  Landmark.swift
//  Landmarks
//
//  Created by Probeer on 12/01/26.
//

import Foundation

enum AmenityType: String {
    case parking = "Parking"
    case publicToilet = "Public Toilet"
    case foodAndDrink = "Food and Drink"
}

struct Amenity: Identifiable {
    let id = UUID()
    let name: AmenityType
    let imageName: String
}

struct Landmark: Identifiable {
    let id = UUID()
    let name: String
    let about: String
    let imageName: String
    let amenities: [Amenity]
    var isFavorited: Bool = false
}
