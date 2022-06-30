//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 11/06/22.
//

import SwiftUI

struct FeaturedTabView: View {
    private let players = PlayerService().fetchPlayers()
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                    .padding(.bottom, -20)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
    }
}
