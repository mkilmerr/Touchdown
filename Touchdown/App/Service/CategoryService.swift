//
//  CategoryService.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import Foundation

class CategoryService {
    private let jsonDecode = JsonDecode()
    private let bundleNetwork = BundleNetwork()

    public func getCategories() -> [Category] {
        let categoryData =  bundleNetwork.fetch(with: "category")
        let categories: [Category] = jsonDecode.decode(with: categoryData)
        return categories
    }
}
