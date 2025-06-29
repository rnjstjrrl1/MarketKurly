//
//  ProductDetailViewModel.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

final class ProductDetailViewModel: ObservableObject {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    func toggleLikeStatus() {
        product.isLike.toggle()
    }
}
