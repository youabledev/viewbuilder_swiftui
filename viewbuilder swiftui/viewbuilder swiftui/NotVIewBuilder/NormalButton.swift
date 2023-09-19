//
//  NormalButton.swift
//  viewbuilder swiftui
//
//  Created by 유효진 on 2023/09/19.
//

import SwiftUI

struct NormalButton: View {
    let buttonName: String
    var body: some View {
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

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(buttonName: "버튼입니다.")
    }
}
