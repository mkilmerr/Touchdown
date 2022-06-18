//
//  CategorySectionView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct CategorySectionView: View {
    let clockWiseRotation: Bool
    var body: some View {
        VStack {
            Spacer()
           Text("Category")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.footnote)
                .rotationEffect(Angle(degrees: clockWiseRotation ? 90 : -90))
            Spacer()
        }
        .background(Color.gray.cornerRadius(12))
    }
}

struct CategorySectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySectionView(clockWiseRotation: false)
            .previewLayout(.sizeThatFits)
    }
}
