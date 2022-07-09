//
//  DetailNavigationSectionView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 01/07/22.
//

import SwiftUI

struct DetailNavigationSectionView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Button {
                withAnimation(.easeIn) {
                    shop.productSelected = nil
                    shop.isShowingProduct = false
                }
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        .padding(.horizontal)
    }
}

struct DetailNavigationSectionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNavigationSectionView()
            .background(Color.gray)
            .previewLayout(.sizeThatFits)
    }
}
