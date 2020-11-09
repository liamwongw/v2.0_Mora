

import UIKit

class TestTableViewController: UITableViewController {
    var m_Images = [String]()
//    let model = generateRandomData()
//    var storedOffsets = [Int: CGFloat]()
    let m_maxCellCount = 11
    var m_maxTableCount = 0
    var m_cells = 0
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if m_Images.count <= m_maxCellCount {
            return 1
        }else {
            m_maxTableCount = (m_Images.count / m_maxCellCount) + 1
            
            return m_maxTableCount
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        var totalArray = [String]()
        var sumCount = m_Images.count - (m_maxCellCount * indexPath.row)
        print("Now TableView indexPath.ro : \(indexPath.row)")
            if (m_Images.count - (m_maxCellCount * indexPath.row)) >= 11 {
                for i in ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount ) + m_maxCellCount) - 1) {
                    totalArray.append(m_Images[i])
                    
                }
                print("1. m_Images.count - (m_maxCellCount * indexPath.row) \(m_Images.count - (m_maxCellCount * indexPath.row))")
                
                print("1. ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount ) + 10)) \(((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount ) + 10)))")
            }else {
                for i in ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount - 1) + (m_Images.count - (m_maxCellCount * indexPath.row)))) {
                    totalArray.append(m_Images[i])
                    
                
                }
                print("3. ((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount - 1) + (m_Images.count - (m_maxCellCount * indexPath.row)))) \(((indexPath.row * m_maxCellCount)...((indexPath.row * m_maxCellCount - 1) + (m_Images.count - (m_maxCellCount * indexPath.row)))))")
                print("3. indexPath.row < 0:m_Images[i]) \(totalArray)")
            }
            cell.m_totalCellArray = totalArray
            
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

        guard let tableViewCell = cell as? TableViewCell else { return }

//        tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
//        tableViewCell.collectionViewOffset = storedOffsets[indexPath.row] ?? 0
    }

    override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {

//        guard let tableViewCell = cell as? TableViewCell else { return }
        
//        storedOffsets[indexPath.row] = tableViewCell.collectionViewOffset
    }
    

}

