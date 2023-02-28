//
//  Extensions.swift
//  ListedLinks
//
//  Created by Keerthi Devipriya(kdp) on 28/02/23.
//

import UIKit

extension UIColor {
    var hexString: String? {
        if let components = self.cgColor.components {
            let red = components[0]
            let green = components[1]
            let blue = components[2]
            return String(format: "#%02x%02x%02x", (Int)(red * 255), (Int)(green * 255), Int(blue * 255))
        }
        return nil
    }
}
