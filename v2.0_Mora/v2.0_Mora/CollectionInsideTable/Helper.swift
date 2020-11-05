//
//  Helper.swift
//  v2.0_Mora
//
//  Created by 1 on 2020/11/5.
//

import Foundation
import UIKit

func generateRandomData() -> [[UIColor]] {
    let numberOfRows = 2
    let numberOfItemsPerRow = 50

    return (0..<numberOfRows).map { _ in
        return (0..<numberOfItemsPerRow).map { _ in UIColor.randomColor() }
    }
}

extension UIColor {
    
    class func randomColor() -> UIColor {

        let hue = CGFloat(arc4random() % 100) / 100
        let saturation = CGFloat(arc4random() % 100) / 100
        let brightness = CGFloat(arc4random() % 100) / 100

        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }
}
