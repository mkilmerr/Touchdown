//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            VStack {
                Button(action: {}) {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .center)
                }
            }
            .background(Color.blue.cornerRadius(12))

            VStack {
                Text(product.name)
                    .fontWeight(.bold)
                    .font(.system(size: 20, weight: .bold, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
                Text("$\(product.price)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
        }
        .padding(.all, 20)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(id: 1, name: "Blue helmet", image: "helmet-no6", price: 666, description: "", color: [0.6, 07]))
            .previewLayout(.sizeThatFits)
    }
}
