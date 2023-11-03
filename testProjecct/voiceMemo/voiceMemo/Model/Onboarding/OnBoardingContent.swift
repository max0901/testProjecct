//
//  OnBoardingContent.swift
//  voiceMemo
//
//  Created by 이정민 on 11/8/23.
//

import Foundation

struct OnBoardingContent:Hashable {
    var imageFileName:String
    var title:String
    var subTilte:String

    init(
        imageFileName: String,
        title: String,
        subTilte: String)
    {
        self.imageFileName = imageFileName
        self.title = title
        self.subTilte = subTilte
    }
}

