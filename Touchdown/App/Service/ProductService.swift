//
//  ProductService.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import Foundation

class ProductService {
    private let jsonDecode = JsonDecode()
    private let bundleNetwork = BundleNetwork()

    public func getProducts() -> [Product] {
        let productData =  bundleNetwork.fetch(with: "product")
        let products: [Product] = jsonDecode.decode(with: productData)
        return products
    }
}
