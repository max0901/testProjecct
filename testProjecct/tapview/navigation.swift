//
//  navigation.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct navigation: View {
    let titles=["디테일뷰로 이동하기","디테일뷰로 이동하기"]
    let descriptions=["데스티네이션 입니다","데스티네이션 입니다1"]
    @State var showModal:Bool=false
    var body: some View {
        NavigationStack {
            List{
                ForEach([0,1],id:\.self){
                    index in
                    NavigationLink{
                        Text(descriptions[index])
                    }label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar{
                ToolbarItem{
                    Button(action: {
                        showModal=true
                    }, label: {
                        Text("add")
                    })
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템추가페이지입니다")
            })
        }
    }
}

#Preview {
    navigation()
}
