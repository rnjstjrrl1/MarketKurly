//
//  HomeView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack(path: $viewModel.path) {
            ScrollView {
                VStack(spacing: 0) {
                    HeaderView()
                    MenuList(selection: $viewModel.selectedMenu)
                }
                .opacity(0)
                ImagePageView(imageNames: viewModel.bannerImages)
                CategoryListView(viewModel: CategoryListViewModel())
                    .padding(.top, 16)
                
                ListSectionHeader(title: "👑 도기워커님을 위해 엄선했어요", subTitle: "찜해 놓은 그 상품, 지금 빅세일로 저렴하게!")
                .padding(.top, 26)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 7) {
                        ForEach(viewModel.productList, id: \.self) { product in
                            ProductCell(prodcut: product)
                                .onTapGesture {
                                    viewModel.navigateToProductDetail(product)
                                }
                        }
                    }
                }
                .padding(.leading, 14)
            }
            .overlay(alignment: .top) {
                VStack(spacing: 0) {
                    HeaderView()
                    MenuList(selection: $viewModel.selectedMenu)
                }
            }
            .navigationDestination(for: Route.self) { path in
                switch path  {
                case let .productDetail(product):
                    ProductDetailView(viewModel: ProductDetailViewModel(product: product))
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
