//
//  Product.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

struct Product: Hashable {
    let imageName: String
    let productName: String
    let originPrice: Int
    let discountRate: Int
    
    var discountPrice: Int {
        return originPrice - (originPrice * discountRate / 100)
    }
}
