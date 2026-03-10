//
//  MenuDetailView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct MenuDetailView: View {
    let menu: Menu
    
    var body: some View {
        Text("Menu Detail View IS Dish List View")
    }
}

#Preview {
    MenuDetailView(menu: Restaurant.sampleData[0].menus[0])
}
