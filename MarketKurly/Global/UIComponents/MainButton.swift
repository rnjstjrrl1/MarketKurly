//
//  MainButton.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct MainButton: View {
    let title: String
    var action: (()->())?
    var body: some View {
        Button {
            action?()
        } label: {
            Text(title)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .medium))
        }
        .background(.main)
        .cornerRadius(8)
    }
}

//#Preview {
//    MainButton()
//}
