//
//  Network.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 11/06/22.
//

import Foundation

protocol Network {
    func fetch(with path: String) -> Data
}

class BundleNetwork: Network {
    func fetch(with path: String) -> Data {
        guard let jsonPath = Bundle.main.path(forResource: path, ofType: "json") else {
            fatalError("Failed to load json file")
        }

        guard let data = try? Data(contentsOf: URL(fileURLWithPath: jsonPath), options: .mappedIfSafe) else {
            fatalError("Failed parse data")
        }

        return data

    }
}
