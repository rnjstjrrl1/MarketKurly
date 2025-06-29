//
//  ListSectionHeader.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ListSectionHeader: View {
    let title: String
    let subTitle: String
    var action: (()->())?
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.gray8)
                Spacer()
                Button {
                    
                } label: {
                    Text("전체보기")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.main)
                }

            }
            Text(subTitle)
                .font(.system(size: 14))
                .foregroundStyle(.gray3)
        }
        .padding(.horizontal, 14)
    }
}

#Preview {
    ListSectionHeader(title: "", subTitle: "")
}
