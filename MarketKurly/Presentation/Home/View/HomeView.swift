//
//  HomeView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationStack(path: $viewModel.path) {
            ScrollView(showsIndicators: false) {
                headerView
                    .opacity(0)

                ImagePageView(imageNames: viewModel.bannerImages)
                    .offset(y: -8)

                CategoryListView(viewModel: CategoryListViewModel())
                    .padding(.top, 16)

                ListSectionHeader(
                    title: "👑 도기워커님을 위해 엄선했어요",
                    subTitle: "찜해 놓은 그 상품, 지금 빅세일로 저렴하게!"
                )
                .padding(.top, 26)

                ProductListView(viewModel: viewModel.productListViewModel) { product in
                    viewModel.navigateToProductDetail(product)
                }
                .padding(.leading, 14)
            }
            .overlay(alignment: .top) {
                headerView
            }
            .navigationDestination(for: Route.self) { path in
                switch path {
                case let .productDetail(product):
                    ProductDetailView(viewModel: ProductDetailViewModel(product: product))
                }
            }
            .onAppear {
                viewModel.productListViewModel.fetchProducts()
            }
        }
    }
    
    private var headerView: some View {
        VStack(spacing: 0) {
            HeaderView(selectedCategory: $viewModel.selectedCategory)
            MenuList(selection: $viewModel.selectedMenu)
        }
    }
}


//#Preview {
//    HomeView()
//}
