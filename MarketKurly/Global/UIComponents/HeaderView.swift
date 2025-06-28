//
//  HeaderView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            HStack {
                Image(.logo)
                Spacer()
                Text("dd")
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
    HeaderView()
}
