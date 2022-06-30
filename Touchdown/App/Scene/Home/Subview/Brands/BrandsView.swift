//
//  BrandsView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 30/06/22.
//

import SwiftUI

struct BrandsView: View {
    private var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 50, alignment: .center), count: 2)
    }

    private let brands = BrandService().getBrands()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 10, pinnedViews: []) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                        .padding()
                }
            }
        }
        .frame(height: 250, alignment: .center)
        //.padding(15)
    }
}

struct BrandsView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsView()
            .previewLayout(.sizeThatFits)
    }
}
