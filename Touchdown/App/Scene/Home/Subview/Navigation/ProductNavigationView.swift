//
//  HomeNavigationView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 10/06/22.
//

import SwiftUI

struct ProductNavigationView: View {
    // MARK: -  PROPERTIES
    @State var isAnimated: Bool = false
    // MARK: - CONTENT
    var body: some View {
        HStack {
            Button {

            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }

            Spacer()

            LogoView()
                .opacity(isAnimated ? 1.0 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -15)
                .onAppear {
                    withAnimation {
                        isAnimated.toggle()
                    }
                }

            Spacer()

            ZStack {
                Button(action: {}) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }

                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 14, y: -10)
            }

        }
       
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ProductNavigationView()
            .previewLayout(.sizeThatFits)
    }
}
