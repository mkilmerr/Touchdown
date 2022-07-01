//
//  DetailView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 01/07/22.
//

import SwiftUI

struct DetailView: View {
    let product: Product
    var body: some View {
        VStack {
            DetailNavigationSectionView()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            DetailHeaderView(product: product)
                .padding()

            DetailTopPartView(product: product)
                .padding()

            Spacer()
        }
        .background(
            Color(red: product.color[0], green: product.color[1], blue: product.color[2])
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(product: ProductService().getProducts().first!)
    }
}