//
//  BrandService.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 30/06/22.
//

import Foundation

class BrandService {
    private let jsonDecode = JsonDecode()
    private let bundleNetwork = BundleNetwork()

    public func getBrands() -> [Brand] {
        let brandData =  bundleNetwork.fetch(with: "brand")
        let brands: [Brand] = jsonDecode.decode(with: brandData)
        return brands
    }
}
