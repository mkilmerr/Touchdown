//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 30/06/22.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    var body: some View {
        Image(brand.image)
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1.0)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: Brand(id: 1, image: "brand-no01"))
            .previewLayout(.sizeThatFits)
    }
}
