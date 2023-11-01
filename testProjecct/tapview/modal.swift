//
//  modal.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct modal: View {
    @State var showModal:Bool=false
    var body: some View {
        VStack{
            Text("메인페이지 입니다")
            Button(action: {
                showModal=true
            }, label: {
                Text("Modal 화면 전환")
            })
        }.sheet(isPresented: $showModal) {
            Detail(showModal:$showModal)
            //리액트 파라미터넘겨주듯이 이름과 값을 넘긴다
        }
    }
}

#Preview {
    modal()
}
