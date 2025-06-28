//
//  SegmentedPicker.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

enum CategoryOption: String, CaseIterable {
    case marketKurly = "마켓컬리"
    case beautyKurly = "뷰티컬리"
}

struct SegmentedPicker: View {
    @Binding var selection: CategoryOption
    @Namespace var namespace

    var body: some View {
        HStack(spacing: 0) {
            ForEach(CategoryOption.allCases, id: \.self) { category in
                let isSelected = category == selection
                
                ZStack {
                    if isSelected {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    }

                    Text(category.rawValue)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(isSelected ? .main : .white)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                }
                .fixedSize()
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selection = category
                    }
                }
            }
        }
        .padding(4)
        .background(Color.sub)
        .clipShape(Capsule())
    }
}

#Preview {
    SegmentedPicker(selection: .constant(.marketKurly))
}
