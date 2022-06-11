//
//  LogoView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 10/06/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("touch".uppercased())
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.black)

            Image("logo-dark")

            Text("down".uppercased())
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
    }
}
