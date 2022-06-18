//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct ProductGridView: View {
    private var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 50, alignment: .center), count: 2)
    }

    private let products = ProductService().getProducts()
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Helmet")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                    Spacer()
                }
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, pinnedViews: []) {
                    ForEach(products) { product in
                        ProductItemView(product: product)}
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
