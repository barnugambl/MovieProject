//
//  Constant.swift
//  MovieProject
//
//  Created by Терёхин Иван on 09.01.2025.
//

import Foundation
import UIKit

enum Constant {
    
    enum TabBarController {
        
        enum Colors {
            static let backgroundColor = UIColor(hex: "242A32")
            static let unselectedItemTintColor = UIColor(hex: "67686D")
            static let selectedItemTintColor = UIColor(hex: "0296E5")
            static let separatorLineColor = UIColor(hex: "0296E5")
        }

        enum Icons {
            static let home = "house"
            static let favorites = "bookmark"
        }

        enum Titles {
            static let home = "Home"
            static let favorites = "Watch list"
        }
        
        enum ConstantSeparationView {
            static let topAnchor: CGFloat = -8
            static let heightAnchor: CGFloat = 1
        }
    }
}
