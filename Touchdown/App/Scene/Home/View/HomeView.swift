//
//  HomeView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 10/06/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var shop: Shop

    var body: some View {
        ZStack {
            if shop.productSelected == nil && shop.isShowingProduct == false {
                VStack(spacing: 0){
                    ProductNavigationView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.height / 3)
                                .padding(.vertical, 20)

                            CategoryGridView()

                            TitleGroupView(title: "Helmet")

                            ProductGridView()
                                .environmentObject(shop)

                            TitleGroupView(title: "Brands")

                            BrandsView()

                            FooterView()
                                .padding(.vertical)
                                .padding(.horizontal)
                        }
                    }
                }
                .background(Color("ColorBackground").ignoresSafeArea(.all, edges: .all))
            } else {
                DetailView(product: shop.getProduct())
                    .environmentObject(shop)
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
