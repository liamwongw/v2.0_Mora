

import UIKit

class TestTableViewController: UITableViewController {
    
    var m_Images = [String]()
    let m_maxCellCount = 19

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if m_maxCellCount > 1 {
            if m_Images.count <= m_maxCellCount {
                // Data 數量 < Cellection cell 數量呈現 1 row
                return 1
            } else {
                // 判斷 Data count 是否有餘數
                // 來防止 多開row 導致 indexPath.row 錯誤
                if m_Images.count % m_maxCellCount == 0{
                    
                    return (m_Images.count / m_maxCellCount)
                } else {
                    return (m_Images.count / m_maxCellCount) + 1
                }
                
            }
        } else {
            // 1 row 1 Data
            return m_Images.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        var totalArray = [String]()
//        var sumCount = m_Images.count - (m_maxCellCount * indexPath.row)
        let startEachRowNumber = m_maxCellCount * indexPath.row
        print("Now TableView indexPath.row : \(indexPath.row)")
        
        // 判斷 Data 是否為空，防止 indexPath.row 直接跑 m_Image[0] 錯誤發生
        if m_Images.isEmpty != true {
            if m_maxCellCount == 1 {
                // 如果 設定 m_maxCellCount = 1
                // 1 row 1 cell
                totalArray.append(m_Images[indexPath.row])
            } else {
                
                if (m_Images.count - startEachRowNumber) >= m_maxCellCount {
                    for i in (startEachRowNumber...(startEachRowNumber + m_maxCellCount) - 1) {
                        totalArray.append(m_Images[i])
                    }
                } else if (m_Images.count - startEachRowNumber) == 1 {
                    totalArray.append(m_Images.last ?? "")
                } else {
                    for i in (startEachRowNumber...(startEachRowNumber + (m_Images.count - (startEachRowNumber) - 1))) {
                        totalArray.append(m_Images[i])
                    }
                }
            }
        }
        
        cell.m_totalCellArray = totalArray
        return cell

//        if (m_Images.count - (m_maxCellCount * indexPath.row)) >= m_maxCellCount {
//            for i in ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount ) + m_maxCellCount) - 1) {
//                totalArray.append(m_Images[i])
//
//            }
//            print("1. m_Images.count - (m_maxCellCount * indexPath.row) \(m_Images.count - (m_maxCellCount * indexPath.row))")
//
//            print("1. ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount ) + m_maxCellCount -1 )) \(((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount ) + m_maxCellCount - 1)))")
//        }else {
//            for i in ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount - 1) + (m_Images.count - (m_maxCellCount * indexPath.row)))) {
//                totalArray.append(m_Images[i])
//
//
//            }
//            print("3. ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount - 1) + (m_Images.count - (m_maxCellCount * indexPath.row)))) \(((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount - 1) + (m_Images.count - (m_maxCellCount * indexPath.row)))))")
//            print("3. indexPath.row < 0:m_Images[i]) \(totalArray)")
//        }
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
//    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//
//        guard let tableViewCell = cell as? TableViewCell else { return }
//
////        tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
////        tableViewCell.collectionViewOffset = storedOffsets[indexPath.row] ?? 0
//    }
//
//    override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//
////        guard let tableViewCell = cell as? TableViewCell else { return }
//
////        storedOffsets[indexPath.row] = tableViewCell.collectionViewOffset
//    }
    

}

