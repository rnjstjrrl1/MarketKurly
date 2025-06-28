//
//  HomeView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HomeView: View {
    @State var selectedMenu: MenuListOption = .kurlyRecomend
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HeaderView()
                MenuList(selection: $selectedMenu)
            }
            .opacity(0)
        }
        .overlay(alignment: .top) {
            VStack(spacing: 0) {
                HeaderView()
                MenuList(selection: $selectedMenu)
            }
        }
    }
}

#Preview {
    HomeView()
}
