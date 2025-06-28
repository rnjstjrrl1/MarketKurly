//
//  HomeView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            HeaderView()
        }
        .overlay(alignment: .top) {
            HeaderView()
        }
    }
}

#Preview {
    HomeView()
}
