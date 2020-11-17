//
//  TableViewCell.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/9.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    var m_totalCellArray = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        print("start")
        
        
    }
}


extension TableViewCell:UICollectionViewDelegate, UICollectionViewDataSource {

//    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {
//
//
//        collectionView.tag = row
//        collectionView.setContentOffset(collectionView.contentOffset, animated:false) // Stops collection view if it was scrolling.
//        collectionView.reloadData()
//    }
//
//    var collectionViewOffset: CGFloat {
//        set { collectionView.contentOffset.x = newValue }
//        get { return collectionView.contentOffset.x }
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print("m_totalCellArray.count: \(m_totalCellArray.count)")
        return m_totalCellArray.count
        
        
            
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TestCollectionViewCell
        
        
        print("\(indexPath.row). collectionView TotalAraary:\(m_totalCellArray[indexPath.row])")
        cell.imageView.image = UIImage(named: m_totalCellArray[indexPath.row])
//        cell.backgroundColor = model[collectionView.tag][indexPath.item]
        
        return cell
    }

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("Collection view at row \(collectionView.tag) selected index path \(indexPath)")
//    }
}
