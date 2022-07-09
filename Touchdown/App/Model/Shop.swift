//
//  Shop.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 09/07/22.
//

import SwiftUI

class Shop: ObservableObject {

    @Published var isShowingProduct: Bool = false
    @Published var productSelected: Product? = nil

    public func setProduct(_ product: Product) {
        productSelected = product
    }

    public func getProduct() -> Product {
        guard let productSelected = productSelected else {
            return Product(id: 0, name: "", image: "", price: 0, description: "", color: [0])
        }
        return productSelected
    }

    public func showProduct() {
        isShowingProduct = true
    }

    public func hideProduct() {
        isShowingProduct = false
    }
}
