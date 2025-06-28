//
//  ProductDetailView.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

struct ProductDetailView: View {
    @StateObject var viewModel: ProductDetailViewModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(.backButtonIcon)
                }
                Spacer()
                Text(viewModel.product.productName)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.gray8)
                    .lineLimit(1)
                Spacer()
                Image(.cartIcon)
            }
            Image(viewModel.product.imageName)
                .resizable(resizingMode: .stretch)
                .frame(maxWidth: .infinity, maxHeight: 491)
        
            VStack(alignment: .leading) {
                Text("샛별배송")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.gray5)
                HStack {
                    Text(viewModel.product.productName)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.gray8)
                    Spacer()
                    Image(.shareIcon)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 14)
            Spacer()
        }
        .navigationBarHidden(true)
        .overlay(alignment: .bottom) {
            HStack(spacing: 8) {
                ProductLikeButton()
                MainButton(title: "구매하기")
            }
            .padding(.horizontal, 16)
        }
    }
}

//#Preview {
//    ProductDetailView()
//}
