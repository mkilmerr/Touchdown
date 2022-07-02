//
//  DetailRatingView.swift
//  Touchdown
//
//  Created by Marcos Kilmer Pereira de Aquino on 02/07/22.
//

import SwiftUI

struct DetailRatingView: View {
    let sizes = ["XS", "S", "M", "L", "XL"]

    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 8 ) {
                    Text("Ratings")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Sizes")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                .padding()


                HStack(spacing: 20.0){
                    HStack {
                        ForEach(1...5, id: \.self) {_ in
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                                .background(.gray.opacity(0.9))
                                .cornerRadius(8)

                        }

                    }

                    HStack {
                        ForEach(sizes, id: \.self) { size in
                            Button(action: {}) {
                                Text(size)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                                    .background(.white)
                                    .cornerRadius(5)
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(
                                        RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 2.0)
                                    )
                            }
                        }

                    }
                }
            }

        }
    }
}

struct DetailRatingView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRatingView()
            .previewLayout(.sizeThatFits)
            .background(.white)
    }
}
