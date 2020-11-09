//
//  MainTableViewCell.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/5.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    var m_TestArray = [String]()
    @IBOutlet weak var collectionView: UICollectionView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("start")
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    
}
extension MainTableViewCell {
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {

        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate


    }
    
}

