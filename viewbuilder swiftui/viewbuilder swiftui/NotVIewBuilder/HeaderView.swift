//
//  HeaderView.swift
//  viewbuilder swiftui
//
//  Created by 유효진 on 2023/09/19.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    
    var body: some View {
        ZStack {
            Text(title)
                .font(.system(.headline))
                .fontWeight(.bold)
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .frame(width: 44, height: 44)
                        .foregroundColor(.black)
                }
                .padding(.leading, 14)
                
                Spacer()
            } //: HStack
        } //: ZStack
        .frame(maxWidth: .infinity)
        .frame(height: 48)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "제목")
    }
}
