//
//  MoraTableViewController.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/2.
//

import UIKit



class MoraTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var MoraTableView: UITableView!
    
    var m_recordListRpsView: [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MoraTableView!.register(MoraTableViewCell.nib, forCellReuseIdentifier: "Cell")

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return m_recordListRpsView.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MoraTableViewCell
        //let cell = UITableViewCell()
        tableCell.resultImage.image = UIImage(named: (m_recordListRpsView[indexPath.row] )["result"]!)
        tableCell.selfResult.text = "我方: " +  changeToCH((m_recordListRpsView[indexPath.row] )["self"]!)
        tableCell.comResult.text = "電腦: " +  changeToCH((m_recordListRpsView[indexPath.row] )["com"]!)
        tableCell.timeLabel.text = ((m_recordListRpsView[indexPath.row] )["time"]!)
        return tableCell
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
