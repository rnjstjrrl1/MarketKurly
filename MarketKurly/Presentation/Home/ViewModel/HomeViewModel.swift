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
    @Published var path: [Route] = []
    @Published var selectedMenu: MenuListOption = .kurlyRecomend
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
