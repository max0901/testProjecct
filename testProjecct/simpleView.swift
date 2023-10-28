//
//  simpleView.swift
//  testProjecct
//
//  Created by 이정민 on 10/28/23.
//

import SwiftUI

struct simpleView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
            //옵션 넣는 순서도 중요함
                .resizable()
            //화면에 맞게 늘려줌, 하지만 이미지 비율을 지켜주지않음
                .scaledToFit()
            //이미지 비율을 맞게 고쳐줌
                .frame(width: 200,height: 200)
            //이미지 사이즈 변경
            Text("헤드라인입니다")
                .font(.headline)
                .bold()
                .padding()
            Text("서브헤드라인")
                .font(.subheadline)
                .padding()
            Text("바디입니다")
                .font(.body)
                .padding()
            Button{
                //
            }label: {
                Text("Click me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }
        }
    }
}

#Preview {
    simpleView()
}
