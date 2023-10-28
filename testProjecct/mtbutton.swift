//
//  mtbutton.swift
//  testProjecct
//
//  Created by 이정민 on 10/28/23.
//

import SwiftUI

struct mtbutton: View {
    var BtnTitle:String
    var BtnColor:Color
    var body: some View {
        
            Button{
                
            }label: {
                Text(BtnTitle)
                    .padding()
                    .background(BtnColor)
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(10)
            }
        }
    }


#Preview {
    mtbutton(BtnTitle: "button3", BtnColor: .brown)
}
