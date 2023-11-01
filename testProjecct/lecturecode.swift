//
//  lecturecode.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI

struct lecturecode: View {
    var body: some View {
        NavigationStack{
            List{
                Section {
                    Label{
                        Text("스크린타임")
                    } icon: {
                        Image(systemName: "hourglass.circle.fill")
                        
                    }
                }
                
                
                Label{
                    Text("일반")
                } icon: {
                    Image(systemName: "gear")
                    
                }
                
                Label{
                    Text("손쉬운 사용")
                } icon: {
                    Image(systemName: "person.crop.circle")
                    
                }
                
            }.navigationTitle("설정")
        }
    }
}

#Preview {
    lecturecode()
}
