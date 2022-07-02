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
        VStack(alignment: .leading, spacing: 80){
            Spacer()
            ScrollView(.vertical, showsIndicators: false) {
                Text(product.description)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
        .background(.white)
        .cornerRadius(12.0)
    }
}

struct DetailDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailDescriptionView(product: ProductService().getProducts().first!)
    }
}
