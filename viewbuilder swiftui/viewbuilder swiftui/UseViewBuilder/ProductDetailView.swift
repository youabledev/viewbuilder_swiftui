//
//  ProductDetailView.swift
//  viewbuilder swiftui
//
//  Created by 유효진 on 2023/09/19.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        NormalView(title: "상품 상세", buttonName: "구입하기") {
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: geometry.frame(in: .global).size.width - 48)
                        .frame(height: geometry.frame(in: .global).size.width - 48)
                        .foregroundColor(.yellow)
                    
                    Text("가격 : 20,000")
                }
                .padding(.horizontal, 24)
            }
        } //: NormalView
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
