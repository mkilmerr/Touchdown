//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 18/06/22.
//

import SwiftUI

struct CategoryGridView: View {
    private var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    private let categories = CategoryService().getCategories()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 20, pinnedViews: []) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    CategorySectionView(clockWiseRotation: false)
                } footer: {
                    CategorySectionView(clockWiseRotation: true)
                }
            }
            .padding(.horizontal, 10)
        }
        .frame(height: 140)
        .padding(.horizontal, 10)
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
    }
}
