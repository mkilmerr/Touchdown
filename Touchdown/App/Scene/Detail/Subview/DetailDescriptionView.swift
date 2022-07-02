//
//  DetailDescriptionView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 02/07/22.
//

import SwiftUI

struct DetailDescriptionView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            ScrollView(.vertical, showsIndicators: false) {
                DetailRatingView()
                    .padding(.top, 50)
                    .padding(.bottom, 20)
                Text(product.description)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding()
                DetailCounterView()
                    .padding()
                DetailAddCartView(product: product)
            }
        }
        .background(.white)
        .cornerRadius(12.0)
    }
}

struct DetailDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailDescriptionView(product: ProductService.shared.sampleProduct)
    }
}
