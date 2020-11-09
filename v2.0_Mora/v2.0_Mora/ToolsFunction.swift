//
//  ToolsFunction.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/2.
//

import Foundation


func saveRowImage(_ images: [String]) -> [[String]] {
    let maxCount = 11
    var numberOfItemRow = 0
    var newImageBox:[[String]] = []
    if images != nil {
        for i in 0...images.count{
            if i == 0{
                newImageBox[i].append(images[i])
            } else {
                numberOfItemRow = (i / maxCount)
                newImageBox[numberOfItemRow].append(images[i])
            }
        }
    }
    
    return newImageBox
    
}

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


// 按鈕計數器
func addCount(_ number: Int) -> Int {
    var x = number + 1
    print(x)
    return x
}
