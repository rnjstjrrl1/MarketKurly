//
//  ProductListView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/29/25.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    var action: ((Product)->())?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 7) {
                ForEach(viewModel.productList, id: \.self) { product in
                    ProductCell(prodcut: product)
                        .onTapGesture {
                            action?(product)
                        }
                }
            }
        }
    }
}

//#Preview {
//    ProductListView()
//}
