//
//  ProductCell.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ProductCell: View {
    let prodcut: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(prodcut.imageName)
                .resizable()
                .frame(maxWidth: 145, minHeight: 188, maxHeight: 188)
                .cornerRadius(8)
            
            AddToCartButton()
                .padding(.top, 6)
            
            Text(prodcut.productName)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.gray8)
                .padding(.top, 12)
                .lineLimit(2)
            
            Text("\(prodcut.originPrice)원")
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.gray3)
                .padding(.top, 2)
                .overlay(Divider())
            HStack(spacing: 4) {
                Text("\(prodcut.discountRate)%")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.customRed)
                Text("\(prodcut.originPrice)원")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.gray8)
            }
        }
        .frame(maxWidth: 145)
    }
}

//#Preview {
//    ProductCell()
//}
