//
//  DIContainer.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

struct DIContainer {
    var homeViewModel: HomeViewModel {
        let respository = MockProductListRepository()
        let productListViewModel = ProductListViewModel(repository: respository)
        return HomeViewModel(productListViewModel: productListViewModel)
    }
}
