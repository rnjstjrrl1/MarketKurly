//
//  AddToCartButton.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct AddToCartButton: View {
    var body: some View {
        HStack {
            Image(.cartSmallIcon)
            Text("담기")
                .font(.system(size: 12))
                .foregroundStyle(.gray8)
        }
        .frame(maxWidth: .infinity, minHeight: 32)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.gray3, lineWidth: 1)
        )
    }
}

#Preview {
    AddToCartButton()
}
