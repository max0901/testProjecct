//
//  textModule.swift
//  testProjecct
//
//  Created by 이정민 on 10/28/23.
//

import SwiftUI

struct textModule: View {
    var textTitle:String
    var textFont:Font
    
    var body: some View {
        Text(textTitle)
            .font(textFont)
            .padding()
    }
}

#Preview {
    textModule(textTitle: "text", textFont: .body)
}
