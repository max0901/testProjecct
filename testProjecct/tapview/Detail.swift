//
//  Detail.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct Detail: View {
    @Binding var showModal:Bool
    var body: some View {
        Text("모달페이지입니다")
        Button(action: {
            showModal=false
        }, label: {
            Text("닫기")
        })
    }
}

#Preview {
    Detail(showModal: .constant(true))
    //constant 언제나 같은값
    
}
