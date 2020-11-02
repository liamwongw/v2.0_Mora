//
//  MoraCollectionViewCell.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/2.
//

import UIKit

class MoraCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    
    static var nib: UINib {
        return UINib(nibName: "MoraCollectionViewCell", bundle: Bundle(for: self))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
