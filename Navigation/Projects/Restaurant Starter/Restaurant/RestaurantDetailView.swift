//
//  RestaurantDetailView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    
    var body: some View {
        Text("Restaurant Detail View IS Menu List View")
    }
}

#Preview {
    RestaurantDetailView(restaurant: Restaurant.sampleData[0])
}
