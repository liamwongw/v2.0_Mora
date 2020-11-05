//
//  MainTableViewCell.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/5.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    var mcollectionViewCellCnt = 0
    @IBOutlet weak var clCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MainTableViewCell {
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDelegate & UICollectionViewDataSource>(_ dataSourceDeleate: D, forRow row:Int
     ) {
        clCollectionView.dataSource = dataSourceDeleate
        clCollectionView.delegate = dataSourceDeleate
        
        clCollectionView.reloadData()
        
    }
}
