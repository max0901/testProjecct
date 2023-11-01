//
//  FirstListpage.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct FirstListpage: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink{
                    Text("첫번쨰 하위페이지 입니다")
                }label: {
                    Text("첫번쨰 하위페이지")
                }
                
                NavigationLink{
                    Text("두번쨰 하위페이지 입니다")
                }label: {
                    Text("두번쨰 하위페이지")
                }
                NavigationLink{
                    Text("세번쨰 하위페이지 입니다")
                }label: {
                    Text("세번쨰 하위페이지")
                }
                NavigationLink{
                    Text("네번쨰 하위페이지 입니다")
                }label: {
                    Text("네번쨰 하위페이지")
                }
                
            }.navigationTitle("리스트")
        }
           
    }
}

#Preview {
    FirstListpage()
}
