//
//  DetailHeaderView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 01/07/22.
//

import SwiftUI

struct DetailHeaderView: View {
    let product: Product
    
    var body: some View {
        HStack {
            VStack {
                Text("Protective gear")
                    .font(.title)
                    .foregroundColor(.white)
                Text(product.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(product: ProductService.shared.sampleProduct)
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
