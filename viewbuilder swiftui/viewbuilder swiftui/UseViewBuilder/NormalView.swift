//
//  NormalView.swift
//  viewbuilder swiftui
//
//  Created by 유효진 on 2023/09/19.
//

import SwiftUI

struct NormalView<Content: View>: View { // 제네릭으로 View를 Content로
    let title: String
    let buttonName: String
    let content: () -> Content // 클로저로 전달 받음
    
    init(title: String, buttonName: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.buttonName = buttonName
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 0) {
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
            
            Spacer()
            
            content()
            
            Spacer()
            
            Button {
                
            } label: {
                Text(buttonName)
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(.black)
            }
        }
    }
}

struct NormalView_Previews: PreviewProvider {
    static var previews: some View {
        NormalView(title: "제목", buttonName: "버튼이름") {
            Text("테스트")
        }
    }
}
