//
//  PlayerService.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 11/06/22.
//

import Foundation

class PlayerService {
    private let jsonDecode = JsonDecode()
    private let bundleNetwork = BundleNetwork()

    func fetchPlayers() -> [Player] {
        let playerData =  bundleNetwork.fetch(with: "player")
        let players: [Player] = jsonDecode.decode(with: playerData)
        return players
    }
}
