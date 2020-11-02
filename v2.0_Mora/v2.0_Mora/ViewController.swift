//
//  ViewController.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {
    
    //拳型
    let m_rps: [String] = ["scissors", "rock", "paper"]
    // 玩家
    let m_player = ("computer", "self")
    
    // 0：贏 ｜ 1: 輸 ｜ 2: 平手
    let winloseBox = ("贏", "輸", "平手")
    var winAndLose:[Int] = []
    var m_recordListRps: [[String:String]] = []
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var comImage: UIImageView!
    @IBOutlet weak var selfImage: UIImageView!
    
    @IBAction func moraStart(_ sender: UIButton) {
        
        let comIndex = Int(arc4random() % (UInt32(3)))
        let selfIndex = Int(arc4random_uniform(UInt32(3)))
        
        comImage.image = UIImage(named: m_rps[comIndex])
        selfImage.image = UIImage(named: m_rps[selfIndex])
        checkWinner(selfIndex: selfIndex, comIndex: comIndex)
        print(m_recordListRps)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    func checkWinner(selfIndex: Int, comIndex: Int) {
        
        
        let nowTime = nowTimeString()
        // 判斷勝負
        let checkBox = (selfIndex, comIndex)
        switch checkBox {
        case let (x, y) where x == y:
            m_recordListRps.append(["self": "\(m_rps[x])","com": "\(m_rps[y])", "result": (winloseBox.2), "time": nowTime])
            print(m_recordListRps)
            return resultLabel.text! = (winloseBox.2)
        case (0,1):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.1), "time": nowTime])
            return resultLabel.text! = (winloseBox.1)
        case (0,2):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.0), "time": nowTime])
            return resultLabel.text! = (winloseBox.0)
        case (1,0):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.0), "time": nowTime])
            return resultLabel.text! = (winloseBox.0)
        case (1,2):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.1), "time": nowTime])
            return resultLabel.text! = (winloseBox.1)
        case (2,0):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.1), "time": nowTime])
            return resultLabel.text! = (winloseBox.1)
        case (2,1):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.0), "time": nowTime])
            return resultLabel.text! = (winloseBox.0)
        case (_, _):
            return
        }
        
    }
    
    func nowTimeString() ->String{
        let currentDate = Date()
        let dataFormatter = DateFormatter() //實體化日期格式化物件
        dataFormatter.locale = Locale(identifier: "zh_Hant_TW")
            dataFormatter.dateFormat = "YYYY年MM月dd日"
        let stringDate = dataFormatter.string(from: currentDate)
        return stringDate
    }

}

