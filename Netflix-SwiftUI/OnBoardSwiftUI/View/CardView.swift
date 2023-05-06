//
//  CardView.swift
//  OnBoardSwiftUI
//
//  Created by Aditya Gaba on 02/05/23.
//

import SwiftUI

struct CardView: View {

    var card: Card

    var body: some View {
        VStack(spacing: 5) {
            Image(card.image)
                .resizable()
                .frame(width: 400, height: 400)

            if card.title.contains("Unlimited") {
                Text(card.title)
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, -100) // move title up by 70 points
            } else {
                Text(card.title)
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top , -60)
            }

            Text(card.description)
                .font(.system(size: 22, weight: .light))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 335)
                .padding(.top , 5)
                .lineLimit(nil)
                .minimumScaleFactor(0.5)
                .fixedSize(horizontal: true, vertical: false)

        }
        .padding()
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: testData[1])
    }
}

