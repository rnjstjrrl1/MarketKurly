//
//  CategoryCell.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct CategoryCell: View {
    let category: Category
    var body: some View {
        VStack {
            category.image
            Text(category.title)
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.gray5)
                .lineLimit(1)
        }
    }
}

//#Preview {
//    CategoryCell()
//}
