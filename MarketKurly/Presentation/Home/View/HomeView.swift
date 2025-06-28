//
//  HomeView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct HomeView: View {
    @State var selectedMenu: MenuListOption = .kurlyRecomend
    let productList: [Product] = [
        Product(imageName: "product1", productName: "[3개 사면 33%] 비비고 통새우만두 200g", originPrice: 6980, discountRate: 33),
        Product(imageName: "product2", productName: "[사리원] 소불고기 전골", originPrice: 15900, discountRate: 35),
        Product(imageName: "product3", productName: "아삭하고 달콤한 황금사과 1.3kg (5~7입)", originPrice: 19900, discountRate: 25),
        Product(imageName: "product4", productName: "[제각각] 당도선별 제주 점보 감귤 3kg", originPrice: 15900, discountRate: 18),
        Product(imageName: "product5", productName: "[골라담기][네스프레소] 커피 캡슐 25종 (택2)", originPrice: 7600, discountRate: 10),
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HeaderView()
                MenuList(selection: $selectedMenu)
            }
            .opacity(0)
            ImagePageView(imageNames: [
                "bannerImage1",
                "bannerImage2",
                "bannerImage3",
                "bannerImage4",
                "bannerImage5",
                "bannerImage6"
            ])
            CategoryListView()
                .padding(.top, 16)
            VStack(alignment: .leading) {
                HStack {
                    Text("👑 도기워커님을 위해 엄선했어요")
                        .font(.system(size: 16, weight: .medium))
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
                    ForEach(productList, id: \.self) { productInfo in
                        ProductCell(prodcut: productInfo)
                    }
                }
            }
            .padding(.leading, 14)
        }
        .overlay(alignment: .top) {
            VStack(spacing: 0) {
                HeaderView()
                MenuList(selection: $selectedMenu)
            }
        }
    }
}

#Preview {
    HomeView()
}
