//
//  tapDetail.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct tapDetail: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Countinue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                })
            }
            
        }
        
    }
}
struct tapDetail2: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("Hello, World!2")
        }
        
    }
}
#Preview {
    tapDetail()
}
