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
                CategoryListView()
                    .padding(.top, 16)
                VStack(alignment: .leading) {
                    HStack {
                        Text("👑 도기워커님을 위해 엄선했어요")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(.gray8)
                        Spacer()
                        Text("전체보기")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.main)
                    }
                    Text("찜해 놓은 그 상품, 지금 빅세일로 저렴하게!")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray3)
                }
                .padding(.horizontal, 14)
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
