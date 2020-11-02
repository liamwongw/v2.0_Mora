//
//  MoraTableViewCell.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/2.
//

import UIKit

class MoraTableViewCell: UITableViewCell {
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var selfResult: UILabel!
    @IBOutlet weak var comResult: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    static var nib: UINib {
        return UINib(nibName: "MoraTableViewCell", bundle: Bundle(for: self))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
