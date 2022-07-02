//
//  DetailAddCartView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 02/07/22.
//

import SwiftUI

struct DetailAddCartView: View {
    let product: Product

    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("add to cart".uppercased())
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
                .frame(height: 50)

            Spacer()
        }
        .background(
            Color(red: product.color[0], green: product.color[1], blue: product.color[2])
        )
        .cornerRadius(12)
        .padding(15)
    }
}

struct DetailAddCartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailAddCartView(product: ProductService().getProducts().first!)
            .previewLayout(.sizeThatFits)
    }
}
