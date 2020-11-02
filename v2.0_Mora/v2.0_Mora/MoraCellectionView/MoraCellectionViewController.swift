//
//  MoraCellectionViewController.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/2.
//

import UIKit



class MoraCellectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var m_images:[String] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.collectionView.delegate = self
//        self.collectionView.dataSource = self
        self.collectionView!.register(MoraCollectionViewCell.nib, forCellWithReuseIdentifier: "Cell")
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return m_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MoraCollectionViewCell
        cell.image.image = UIImage(named: m_images[indexPath.row])
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
