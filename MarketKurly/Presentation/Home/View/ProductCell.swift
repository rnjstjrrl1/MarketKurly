//
//  ProductCell.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ProductCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(.product1)
                .resizable()
                .frame(maxWidth: 145, maxHeight: 224)
                .background(.gray)
                .cornerRadius(8)
            
            Text("담기")
                .padding(.top, 6)
            
            Text("[3개 사면 33%] 비비고 통새우만두 200g")
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.gray8)
                .padding(.top, 12)
                .lineLimit(2)
            
            Text("6890원")
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.gray3)
                .padding(.top, 2)
            HStack(spacing: 4) {
                Text("33%")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.customRed)
                Text("4,630 원")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.gray8)
            }
        }
        .frame(maxWidth: 145)
    }
}

#Preview {
    ProductCell()
}
