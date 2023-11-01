//
//  Onboding1.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct Onboding1: View {
    @Binding var showModal:Bool
    let onboardingTitle:String
    let backgroundColor:Color
    var body: some View {
        ZStack{
          backgroundColor.ignoresSafeArea()
          
            if(onboardingTitle=="온보딩3"){
                VStack{
                    Text(onboardingTitle)
                    Button(action: {
                        showModal=false
                    }, label: {
                        Text("start")
                    })
                }
            }else{
                Text(onboardingTitle)
            }
        }
    }
}

#Preview {
    Onboding1(showModal: .constant(true), onboardingTitle: "온보딩 테스트",backgroundColor: .blue)
}
