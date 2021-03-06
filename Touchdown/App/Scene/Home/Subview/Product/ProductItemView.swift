//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct ProductItemView: View {

    @EnvironmentObject var shop: Shop

    let product: Product


    private func showProductDetail() {
        withAnimation(.easeOut) {
            shop.setProduct(product)
            shop.showProduct()
        }
    }

    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            VStack {
                Button(action: { showProductDetail() }) {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                }
            }
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2])).cornerRadius(12.0)

                Text(product.name)
                    .fontWeight(.bold)
                    .font(.system(size: 20, weight: .bold, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
                    .foregroundColor(.black)
                Text("$\(product.price)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
        }
        .onTapGesture {
            showProductDetail()
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(id: 1, name: "Blue helmet", image: "helmet-no6", price: 666, description: "", color: [0.6, 07]))
            .previewLayout(.sizeThatFits)
    }
}
