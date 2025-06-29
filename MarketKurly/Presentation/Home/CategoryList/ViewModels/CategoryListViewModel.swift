//
//  CategoryListViewModel.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

final class CategoryListViewModel: ObservableObject {
    @Published var categories: [Category] = [
        .init(title: "최저가도전", image: Image(.lowestPriceIcon)),
        .init(title: "멤버스특가", image: Image(.membersIcon)),
        .init(title: "홈&리빙", image: Image(.homelivingIcon)),
        .init(title: "패션", image: Image(.fashionIcon)),
        .init(title: "선물추천", image: Image(.presentIcon)),
        .init(title: "라이브커머스", image: Image(.livecommerceIcon)),
        .init(title: "컬리멤버스", image: Image(.membersIcon)),
        .init(title: "컬레큐레이션", image: Image(.kurlycuratorIcon)),
        .init(title: "행운출첵", image: Image(.homeluckIcon)),
        .init(title: "오늘의타로", image: Image(.homeTodayTarotIcon)),
        .init(title: "마이컬리맘", image: Image(.myKurlyFarmIcon)),
        .init(title: "쇼케이스", image: Image(.shocaseIcon)),
    ]
    
}
