//
//  HomeViewModel.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

enum Route: Hashable {
    case productDetail(Product)
}

final class HomeViewModel: ObservableObject {
    /// 화면이동 경로 관리
    @Published var path: [Route] = []
    /// 현재 선택한 메뉴
    @Published var selectedMenu: MenuListOption = .kurlyRecomend
    /// 현재 선택된 카테고리
    @Published var selectedCategory: CategoryOption = .marketKurly
    /// 배너이미지 목록
    @Published var bannerImages: [String] = [ "bannerImage1",
                                              "bannerImage2",
                                              "bannerImage3",
                                              "bannerImage4",
                                              "bannerImage5",
                                              "bannerImage6"]
    
    func navigateToProductDetail(_ product: Product) {
        path.append(.productDetail(product))
    }
}
