//
//  ProductLikeButton.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ProductLikeButton: View {
    var body: some View {
        Image(.heartIcon)
            .padding(11)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray3, lineWidth: 1)
            )
    }
}

#Preview {
    ProductLikeButton()
}
