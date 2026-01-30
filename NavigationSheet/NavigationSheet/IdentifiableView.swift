//
//  IdentifiableView.swift
//  NavigationSheet
//
//  Created by Vanshika Pal on 30/01/26.
//

import SwiftUI


struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
}


struct IdentifiableView: View {
    @State private var selectedProduct: Product?
    @State private var showAlert = false
    let products = [
        Product(name: "Kurkure", price: 10),
        Product(name: "Dairy Milk", price: 40),
        Product(name: "Dark Chocolate", price: 150)
    ]
    var body: some View {
        NavigationStack {
            List(products) { product in
                Button {
                    selectedProduct = product
                    showAlert = true
                } label: {
                    HStack {
                        Text(product.name)
                        Spacer()
                        Text("$\(Int(product.price))")
                            .foregroundStyle(.gray)
                    }
                }
            }
            .navigationTitle("Product List")
            .alert(
                "Product Selected",
                isPresented: $showAlert,
                presenting: selectedProduct
            ) { product in
                Button("OK", role: .cancel) {}
            } message: { product in
                Text("You selected: \(product.name)")
            }
        }
    }
}

#Preview {
    IdentifiableView()
}
