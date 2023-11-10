//
//  TodoView.swift
//  voiceMemo
//
//  Created by 이정민 on 11/9/23.
//

import Foundation

struct Todo:Hashable{
    var title:String
    var time: Date
    var day: Date
    var selected:Bool
    
    var convertedDayAndType:String{
        //오늘 - 오후 03:03시에 알림
        String("\(day.formattedDay)-\(time.formattedTime)에 알림")
    }
}
