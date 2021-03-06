//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 10/06/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    @StateObject var shop = Shop()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(shop)
        }
    }
}
