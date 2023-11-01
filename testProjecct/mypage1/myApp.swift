//
//  myApp.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct myApp: View {
    @State var showModal:Bool=false
    var body: some View {
        TabView{
            //
      FirstListpage()
                .tabItem{
                    Label("first",systemImage: "phone")
                }
            //
            Text("두번째 페이지")
                .tabItem{
                    Label("second",systemImage: "phone")
                }
            //
            Text("세번째 페이지")
                .tabItem{
                    Label("third",systemImage: "phone")
                }
            //
            Text("네번째 페이지")
                .tabItem{
                    Label("fourth",systemImage: "phone")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView{
                Onboding1(showModal: $showModal,onboardingTitle: "온보딩1",backgroundColor: .blue)
                Onboding1(showModal: $showModal,onboardingTitle: "온보딩2",backgroundColor: .green)
                Onboding1(showModal: $showModal,onboardingTitle: "온보딩3",backgroundColor: .brown)
//                ZStack{
//                    Color.green.ignoresSafeArea()
//                    Text("온보딩2")
//                }
                ZStack{
                    Color.gray.ignoresSafeArea()
                    VStack{
                        Text("온보딩3")
                        Button(action: {
                            showModal=false
                        }, label: {
                            Text("start")
                        })
                    }
                   
                }
                
                
            }.tabViewStyle(.page)
            
        })
        .onAppear{
            showModal = true
        }
        //onAppear 화면이 불리자마자 보이는 화면
    }
}

#Preview {
    myApp()
}
