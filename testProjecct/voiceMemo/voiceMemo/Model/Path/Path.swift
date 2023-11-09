//
//  Path.swift
//  voiceMemo
//
//  Created by 이정민 on 11/9/23.
//

import Foundation

class PathModel:ObservableObject{
    @Published var paths:[PathType]
    init(paths: [PathType]=[]) {
        self.paths = paths
    }
}
