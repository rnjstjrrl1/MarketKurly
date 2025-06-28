//
//  ProductDetailViewModel.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

final class ProductDetailViewModel: ObservableObject {
    let product: Product
    
    init(product: Product) {
        self.product = product
    }
}
