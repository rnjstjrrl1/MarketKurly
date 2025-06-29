//
//  ProductListRepository.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

protocol ProductListRepository {
    func fetchProducts() -> [Product]
}

final class MockProductListRepository: ProductListRepository {
    func fetchProducts() -> [Product] {
        [
            Product(imageName: "product1", productName: "[3개 사면 33%] 비비고 통새우만두 200g", originPrice: 6980, discountRate: 33, isLike: false),
            Product(imageName: "product2", productName: "[사리원] 소불고기 전골", originPrice: 15900, discountRate: 35, isLike: false),
            Product(imageName: "product3", productName: "아삭하고 달콤한 황금사과 1.3kg (5~7입)", originPrice: 19900, discountRate: 25, isLike: false),
            Product(imageName: "product4", productName: "[제각각] 당도선별 제주 점보 감귤 3kg", originPrice: 15900, discountRate: 18, isLike: false),
            Product(imageName: "product5", productName: "[골라담기][네스프레소] 커피 캡슐 25종 (택2)", originPrice: 7600, discountRate: 10, isLike: false),
        ]
    }
}
