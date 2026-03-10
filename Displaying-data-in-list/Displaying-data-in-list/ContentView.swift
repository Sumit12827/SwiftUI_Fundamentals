//
//  ContentView.swift
//  Displaying-data-in-list
//
//  Created by Sumit Downey on 08/01/26.
//


import SwiftUI

// Food model
struct Food: Identifiable {
    let id = UUID()
    var name: String
}

// Meal model (Section)
struct Meal: Identifiable {
    let id = UUID()
    var name: String
    var foods: [Food]
}

struct ContentView: View {

    // Data
    let meals = [
        Meal(
            name: "Breakfast",
            foods: [
                Food(name: "Toast"),
                Food(name: "Eggs"),
                Food(name: "Fruits")
            ]
        ),
        Meal(
            name: "Lunch",
            foods: [
                Food(name: "Rice"),
                Food(name: "Dal"),
                Food(name: "Vegetables")
            ]
        ),
        Meal(
            name: "Dinner",
            foods: [
                Food(name: "Roti"),
                Food(name: "Sabzi"),
                Food(name: "Soup")
            ]
        )
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(meals) { meal in
                    Section {
                        ForEach(meal.foods) { food in
                            Text(food.name)
                        }
                    } header: {
                        Text(meal.name)
                            .font(.title2)
                            .bold()
                    }
                }
            }
            .navigationTitle("Meal List")
        }
    }
}

#Preview {
    ContentView()
}
