//
//  ImagePageView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ImagePageView: View {
    let imageNames: [String]
    @State var selectedIndex = 0
    var body: some View {
        Image(.bannerImage1)
            .overlay(Color.white)
            .overlay(
                TabView(selection: $selectedIndex) {
                    ForEach(Array(imageNames.enumerated()), id: \.self.offset) {
                        Image($0.element)
                            .resizable(resizingMode: .stretch)
                            .tag($0.offset)
                    }
                }
                    .frame(width: UIScreen.main.bounds.width)
                    .tabViewStyle(.page(indexDisplayMode: .never))
            )
            .overlay(alignment: .bottomTrailing) {
                Text("\(selectedIndex + 1)/\(imageNames.count)")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.white)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 6)
                    .background(Color.white.colorInvert().opacity(0.18))
                    .clipShape(Capsule())
                    .offset(x: -9, y: -9)
            }
    }
}

#Preview {
    ImagePageView(imageNames: [])
}

