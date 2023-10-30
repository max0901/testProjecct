//
//  introMain.swift
//  testProjecct
//
//  Created by 이정민 on 10/30/23.
//

import SwiftUI

struct introMain: View {
    var body: some View {
        VStack{
            Text("What`s New In Photos")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top,50)
            textBox(ImgTitle: "person.2", Title:"Shared Library", Main: "Combine photos and videos with the peopleclosset to you and automatically share new photso from camera")
            textBox(ImgTitle: "person.2", Title:"Shared Library", Main: "Combine photos and videos with the peopleclosset to you and automatically share new photso from camera")
            textBox(ImgTitle: "person.2", Title:"Shared Library", Main: "Combine photos and videos with the peopleclosset to you and automatically share new photso from camera")
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("countinu")
                    .padding()
                    
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                  
            }).padding(.bottom,200)
        }
    }
}

#Preview {
    introMain()
}
