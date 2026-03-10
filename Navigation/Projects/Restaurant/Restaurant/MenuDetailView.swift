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
        List(menu.dishes) { dish in
            NavigationLink {
                DishDetailView(dish: dish)
            } label: {
                DishRowView(dish: dish)
            }
        }
        .navigationTitle(menu.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MenuDetailView(menu: Restaurant.sampleData[0].menus[0])
}
