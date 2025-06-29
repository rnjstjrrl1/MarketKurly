//
//  HeaderView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HeaderView: View {
    @Binding var selectedCategory: CategoryOption
    var body: some View {
        HStack {
            HStack(spacing: 0) {
                Image(.logo)
                Spacer()
                SegmentedPicker(selection: $selectedCategory)
                Spacer()
                Image(.notificationIcon)
                Image(.homeCartIcon)
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 6)
        }
        .background(.main)
    }
}

#Preview {
    HeaderView(selectedCategory: .constant(.marketKurly))
}
