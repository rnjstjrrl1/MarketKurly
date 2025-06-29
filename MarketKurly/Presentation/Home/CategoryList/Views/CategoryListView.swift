//
//  CategoryListView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct CategoryListView: View {
    var viewModel: CategoryListViewModel
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 6)
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(viewModel.categories) { category in
               CategoryCell(category: category)
            }
        }
        .padding(.horizontal, 14)
    }
}

#Preview {
    CategoryListView(viewModel: CategoryListViewModel())
}
