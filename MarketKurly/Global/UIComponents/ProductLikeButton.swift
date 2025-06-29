//
//  ProductLikeButton.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ProductLikeButton: View {
    let isLike: Bool
    @State var scale = 1.0
    var body: some View {
        Image(isLike ? .heartFillIcon : .heartIcon)
            .scaleEffect(scale)
            .padding(11)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray3, lineWidth: 1)
            )
            .onChange(of: isLike) { _ in
                if !isLike {
                    withAnimation(.spring()) {
                        scale = 1.1
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        withAnimation(.spring()) {
                            scale = 1.0
                        }
                    }
                }
            }
    }
}

#Preview {
    ProductLikeButton(isLike: false)
}
