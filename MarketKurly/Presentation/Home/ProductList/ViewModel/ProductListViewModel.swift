//
//  ProductListViewModel.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

final class ProductListViewModel: ObservableObject {
    @Published var productList: [Product] = []
    let repository: ProductListRepository
    
    init(repository: ProductListRepository) {
        self.repository = repository
    }
    
    func fetchProducts() {
        self.productList = repository.fetchProducts()
    }
}
