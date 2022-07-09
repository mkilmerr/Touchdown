//
//  Shop.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 09/07/22.
//

import Foundation

class Shop: ObservableObject {

    private var isShowingProduct: Bool = false
    private var productSelected: Product? = nil

    public func verifyIfProductDetailIsShowing() -> Bool {
        return isShowingProduct && productSelected != nil
    }

    public func setProduct(_ product: Product) {
        productSelected = product
    }

    public func showProduct() {
        isShowingProduct = true
    }

    public func hideProcut() {
        isShowingProduct = false
    }
}
