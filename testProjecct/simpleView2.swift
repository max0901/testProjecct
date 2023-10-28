//
//  simpleView2.swift
//  testProjecct
//
//  Created by 이정민 on 10/28/23.
//

import SwiftUI

struct simpleView2: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil.line")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding()
          
            textModule(textTitle: "Text Element1", textFont: .largeTitle)
            textModule(textTitle: "Text Element2", textFont: .title2)
            textModule(textTitle: "Text Element2", textFont: .body)
            HStack{
                mtbutton(BtnTitle:"Btn 1", BtnColor:.green)
                mtbutton(BtnTitle:"Btn 2", BtnColor:.cyan)
            }
            
            Button{
                
            }label: {
                VStack{
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
                //공통인것들은 vstack에 바로 스타일을 줄수 있다
            }
            
        }
    }
}

#Preview {
    simpleView2()
}
