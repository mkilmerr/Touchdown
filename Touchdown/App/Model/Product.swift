//
//  Product.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
