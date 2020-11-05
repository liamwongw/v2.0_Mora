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
    //let m_player = ("self", "computer")
    
    // 0：贏 ｜ 1: 輸 ｜ 2: 平手
    let winloseBox = ("win", "lose", "tie")
    var m_winAndLose:[String] = []
    var m_recordListRps: [[String:String]] = []
    
    // segue name

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var comImage: UIImageView!
    @IBOutlet weak var selfImage: UIImageView!
    
    @IBAction func moraStart(_ sender: UIButton) {
        
        let comIndex = Int(arc4random() % (UInt32(3)))
        let selfIndex = Int(arc4random_uniform(UInt32(3)))
        
        comImage.image = UIImage(named: m_rps[comIndex])
        selfImage.image = UIImage(named: m_rps[selfIndex])
        checkWinner(selfIndex: selfIndex, comIndex: comIndex)
        //print(m_recordListRps)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    func checkWinner(selfIndex: Int, comIndex: Int) {
        
        
        let nowTime = m_nowTimeString()
        // 判斷勝負
        let checkBox = (selfIndex, comIndex)
        switch checkBox {
        case let (x, y) where x == y:
            m_recordListRps.append(["self": "\(m_rps[x])","com": "\(m_rps[y])", "result": (winloseBox.2), "time": nowTime])
            //print(m_recordListRps)
            m_winAndLose.append(winloseBox.2)
            return resultLabel.text! = m_changeToCH(winloseBox.2)
        case (0,1):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.1), "time": nowTime])
            m_winAndLose.append(winloseBox.1)
            return resultLabel.text! = m_changeToCH(winloseBox.1)
        case (0,2):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.0), "time": nowTime])
            m_winAndLose.append(winloseBox.0)
            return resultLabel.text! = m_changeToCH(winloseBox.0)
        case (1,0):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.0), "time": nowTime])
            m_winAndLose.append(winloseBox.0)
            return resultLabel.text! = m_changeToCH(winloseBox.0)
        case (1,2):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.1), "time": nowTime])
            m_winAndLose.append(winloseBox.1)
            return resultLabel.text! = m_changeToCH(winloseBox.1)
        case (2,0):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.1), "time": nowTime])
            m_winAndLose.append(winloseBox.1)
            return resultLabel.text! = m_changeToCH(winloseBox.1)
        case (2,1):
            m_recordListRps.append(["self": m_rps[checkBox.0],"com": m_rps[checkBox.1], "result": (winloseBox.0), "time": nowTime])
            m_winAndLose.append(winloseBox.0)
            m_winAndLose.append(winloseBox.1)
            return resultLabel.text! = m_changeToCH(winloseBox.0)
        case (_, _):
            return
        }
        
    }
    
    let segueName = ("segue_rps_to_table", "segue_rps_to_collection")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueName.0{
            let tableVC = segue.destination as! MoraTableViewController
            if m_recordListRps != [] {
                tableVC.m_recordListRpsView = m_recordListRps
            }
        }
        
        
        switch segue.identifier {
        case segueName.0:
            let tableVC = segue.destination as! MoraTableViewController
            if m_recordListRps != [] {
                tableVC.m_recordListRpsView = m_recordListRps
            }
        case segueName.1:
            let tableVC = segue.destination as! TableViewController
            if m_recordListRps != [] {
                tableVC.m_images = m_winAndLose
                print(tableVC.m_images)
            }else{
                print("null")
            }
        default:
            return
        }
    }
}

