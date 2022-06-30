//
//  CategoryGridItemView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6.0) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)

                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            }
        })
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 2.0)
            )
    }

    struct CategoryGridItemView_Previews: PreviewProvider {
        static var previews: some View {
            CategoryItemView(category: Category(id: 1, name: "Jersey", image: "icon-jersey"))
                .previewLayout(.sizeThatFits)
                .background(Color("ColorBackground"))
        }
    }
}
