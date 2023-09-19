//
//  MainView.swift
//  viewbuilder swiftui
//
//  Created by 유효진 on 2023/09/19.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HeaderView(title: "메인화면")
            Spacer()
            Text("컨텐츠 영역입니다.")
            Spacer()
            NormalButton(buttonName: "다음")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
