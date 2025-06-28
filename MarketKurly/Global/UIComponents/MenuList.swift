//
//  MenuList.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

enum MenuListOption: String, CaseIterable {
    case kurlyRecomend = "컬리추천"
    case best = "베스트"
    case newProduct = "신상품"
    case smartShopping = "알뜰쇼핑"
    case specialDeal = "특가/혜택"
}

struct MenuList: View {
    @Binding var selection: MenuListOption
    @Namespace var namespace
    var body: some View {
        HStack {
            Spacer()
            ForEach(MenuListOption.allCases, id: \.self) { menu in
                let isSelected = selection == menu
                Text(menu.rawValue)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(isSelected ? .sub : .gray6)
                    .padding(.vertical, 12)
                    .overlay(alignment: .bottom) {
                        if isSelected {
                            Color.sub
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "background", in: namespace)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            selection = menu
                        }
                    }
                Spacer()
            }
        }
    }
}

#Preview {
    MenuList(selection: .constant(.best))
}
