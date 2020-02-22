//
//  UIColor+Hex.swift
//  Weather
//
//  Created by Hessam Mahdiabadi on 2/22/20.
//  Copyright © 2020 Hessam Mahdiabadi. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(withHex Hex: String, alpha: CGFloat = 1.0) {
        var cString: String = Hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        
        if cString.count != 6 {
            self.init(white: 0.0, alpha: 1.0)
        } else {
            var rgbValue: UInt32 = 0
            Scanner(string: cString).scanHexInt32(&rgbValue)
            
            self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                      alpha: alpha)
        }
    }
}
