//
//  DetailTopPartView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 01/07/22.
//

import SwiftUI

struct DetailTopPartView: View {
    let product: Product
    @State private var isAnimating: Bool = false

    var body: some View {
        HStack {
            VStack {
                Text("Price")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Text("$\(product.price)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)

            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -40)

            Spacer()
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct DetailTopPartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTopPartView(product: ProductService().getProducts().first!)
            .previewLayout(.sizeThatFits)
    }
}
