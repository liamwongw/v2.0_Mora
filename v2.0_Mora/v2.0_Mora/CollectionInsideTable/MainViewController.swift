
import UIKit

class MainViewController: UIViewController {
    
    var m_images = [String]()
    var m_maxCellOfRow = 11
    var m_Total_Array = [String]()
    var mcollectionViewCellCnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if m_images.count > 11 {
            if m_images.count % 11 == 0{
                return Int(m_images.count / 11)
            }else {
                return Int((m_images.count / 11) + 1)
            }
        }else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        
        if indexPath.row == 0 {
            cell.m_TestArray = m_images
            print("cell.m_TestArray :\(cell.m_TestArray)")
            
        }else {
            if (indexPath.row - m_maxCellOfRow) > m_maxCellOfRow {
                for i in ((indexPath.row * 11)...(indexPath.row * 11 + 11)) {
                    
                    cell.m_TestArray.append(m_images[i])
                    
                }
            }else {
                cell.m_TestArray.append(m_images[indexPath.row + (m_maxCellOfRow * indexPath.row) + 1])
                cell.collectionView.reloadData()
            }
        }
        //傳值 collection
        
        print("Debug: TableViewCell 1.Row: \(indexPath.row)")
        print("-------------------------")

        return cell
    }
    
}



extension MainViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        print("1. m_TestArry count:\(m_maxCellOfRow.count)")
//        if m_Total_Array.count != 0 {
//            print("1.m_TestArray.count: \(m_TestArray.count)")
//            return m_Total_Array.count
//        }else{
//            print("2. m_TestArry count:\(m_TestArray.count)")
//            return 1
//        }
            return 1
    }
//
        
//        if m_images.count >= 11 {
//            var total = m_images.count - (rowCount * 11)
//            if total > 11 {
//                print("1. Total \(11)")
//                return 11
//
//
//            }else {
//                print("2. Total \(total)")
//                return total // 1
//            }
//        }else {
//            print("3. Total \(m_images.count)")
//            return m_images.count
//        }
        
//        if m_images.count > 11 c{
//            if m_images.count % 11 == 0 {
//                print("collection conte : 11")
//                return 11
//            }else {
//                print("1.collection conte : \(m_images.count % 11)")
//                return (m_images.count % 11)
//            }
//        }else {
//            print("2.collection conte : \(m_images.count)")
//            return m_images.count
//        }
        
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InsideCollectionViewCell", for: indexPath) as! InsideCollectionViewCell
            
//        print("Debug: Collection Row: \(rowCount)")
        print("-------------------------")
        
//        if rowCount > 0 {
//            let count = (indexPath.item + (11 * rowCount))
//            print("1.CollectionView Tag: \(rowCount)")
//            print("Debug: Collection count: \(count)")
//            print("-------------------------")
//            cell.imageView.image = UIImage(named: m_images[count])
//            cell.frame = collectionView.bounds
//            cell.layoutIfNeeded()
//        }else {
//            print("2. CollectionView Tag: \(rowCount) | \(indexPath.item)")
//            cell.imageView.image = UIImage(named: m_images[indexPath.item])
//        }
        return cell
    }
}
