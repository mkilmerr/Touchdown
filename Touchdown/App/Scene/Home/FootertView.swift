//
//  ContentView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 10/06/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        // MARK: -
        VStack(alignment: .center, spacing: 10){
            Text("We offer the most cutting edge comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)

            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)

            Text("Copyright © Kilmer\nAll right reserved")
                .multilineTextAlignment(.center)
                .font(.footnote)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
    }
}
