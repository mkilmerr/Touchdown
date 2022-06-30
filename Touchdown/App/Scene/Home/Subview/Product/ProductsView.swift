//
//  ProductsView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        VStack {
            Text("Helmets")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.system(size: 20))
            ProductGridView()
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .previewLayout(.sizeThatFits)
    }
}
