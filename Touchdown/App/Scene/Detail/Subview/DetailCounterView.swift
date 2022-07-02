//
//  DetailCounterView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 02/07/22.
//

import SwiftUI

struct DetailCounterView: View {
    @State private var counter = 0

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter < 100 { counter += 1 }
            }) {
                Image(systemName: "plus.circle")
            }

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(maxWidth: 46)

            Button(action: {
                if counter != 0 { counter -= 1}
            }) {
                Image(systemName: "minus.circle")
            }

            Spacer()

            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.largeTitle)
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct DetailCounterView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCounterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
