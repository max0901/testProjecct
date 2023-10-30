//
//  textBox.swift
//  testProjecct
//
//  Created by 이정민 on 10/30/23.
//

import SwiftUI

struct textBox: View {
    var ImgTitle: String
    var Title: String
    var Main:String
    var body: some View {
        HStack{
            Image(systemName: ImgTitle)
                
                .resizable()
                .foregroundColor(Color.blue)
             
                .scaledToFit()
                .frame(width: 30)
                
            VStack(alignment: .leading){
                //alignment 글 시작 위치조정
                Text(Title)
                    .font(.headline)
                
                Text(Main)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    
            }
            .padding(.trailing)
            
        }
        .padding(.bottom)
    }
}

#Preview {
    textBox(ImgTitle:"person.2",Title:"Shared Library",Main:"Combine photos and videos with the peopleclosset to you and automatically share new photso from camera")
}
