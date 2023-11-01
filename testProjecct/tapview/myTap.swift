//
//  tapViewDetail.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct myTap: View {
    var body: some View {
        TabView{
            tapDetail()
            //탭클릭시 페이지
                
                .badge("3")
            //알람
                .tabItem {
                    Label(
                        "문자",systemImage:"person"
                        //탭 이미지 ,text
                    )
                }
            tapDetail2()
                .tabItem{
                    Label(
                    "전화", systemImage: "phone"
                    )
                }
           
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
      
    }
      
}

#Preview {
    myTap()
}
