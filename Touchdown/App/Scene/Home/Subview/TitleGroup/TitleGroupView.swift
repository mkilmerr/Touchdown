//
//  TitleGroupView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 30/06/22.
//

import SwiftUI

struct TitleGroupView: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
                .foregroundColor(.black)
            Spacer()
        }
    }
}

struct TitleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        TitleGroupView(title: "Helmet")
    }
}
