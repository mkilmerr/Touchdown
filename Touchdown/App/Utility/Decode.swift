//
//  Decode.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 11/06/22.
//

import Foundation

protocol Decode {
    func decode<T: Codable>(with data: Data) -> [T]
}

class JsonDecode: Decode {
    func decode<T>(with data: Data) -> [T] where T : Decodable, T : Encodable {
        let jsonDecoder = JSONDecoder()
        guard let decodedData = try? jsonDecoder.decode([T].self, from: data) else {
            fatalError("Failed to decoded")
        }
        return decodedData
    }

//    func decode<T>(with data: Data) -> T where T : Decodable, T : Encodable {
//        let jsonDecoder = JSONDecoder()
//        guard let decodedData = try? jsonDecoder.decode([T].self, from: data) else {
//            fatalError("Failed to decoded")
//        }
//        return decodedData
//    }
}
