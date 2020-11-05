
import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    var m_images:[String] = []
    var rowCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        

        if m_images.count > 11 {
            if m_images.count % 11 == 0{
                return Int(m_images.count / 11)
            }else {
                return Int((m_images.count / 11) + 1)
            }
        }else if m_images.count == 0 {
            return 0
        }else {
            return 1
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        
        
        
        print("Debug: TableViewCell Row: \(indexPath.row)")
        print("Debug: TableViewCell Row: \(rowCount)")
        print("-------------------------")
        return cell
    }
    
    
    
    // MARK
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("進入點: \(m_images.count)")
        print("進入點：\(rowCount)")
        var total = 0
        if m_images.count > 11 {
            var total = m_images.count - (rowCount * 11)
            if total > 11 {
                print("1. Total \(11)")
                return 11
            
                
            }else {
                print("2. Total \(total)")
                return total // 1
            }
        }else {
            print("3. Total \(m_images.count)")
            return m_images.count
        }
        
//        if m_images.count > 11 {
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
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InsideCollectionViewCell", for: indexPath) as! InsideCollectionViewCell
        
        print("Debug: Collection Row: \(rowCount)")
        print("-------------------------")

        if rowCount > 0 {
            let count = (indexPath.row + (11 * rowCount))
            print("Debug: Collection count: \(count)")
            print("-------------------------")
            cell.imageView.image = UIImage(named: m_images[count])
        }else {
            cell.imageView.image = UIImage(named: m_images[indexPath.row])
        }
        
        
        
        return cell
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
