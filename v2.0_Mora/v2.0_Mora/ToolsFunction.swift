//
//  ToolsFunction.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/2.
//

import Foundation


func m_nowTimeString() ->String{
    let currentDate = Date()
    let dataFormatter = DateFormatter() //實體化日期格式化物件
    dataFormatter.locale = Locale(identifier: "zh_Hant_TW")
        dataFormatter.dateFormat = "YYYY年MM月dd日hh時mm分ss秒"
    let stringDate = dataFormatter.string(from: currentDate)
    return stringDate
}


func m_changeToCH (_ result: String) -> String {

    switch result {
    case "win":
        return "你贏了"
    case "lose":
        return "你輸了"
    case "tie":
        return "平手"
    case "paper":
        return "布"
    case "rock":
        return "石頭"
    case "scissors":
        return "剪刀"
    default:
        return "null"
    }
}
