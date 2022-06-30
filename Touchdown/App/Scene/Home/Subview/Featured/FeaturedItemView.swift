//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 11/06/22.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: Player

    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: Player(id: 1, image: "american-football-player-no1"))
            .previewLayout(.sizeThatFits)
    }
}
