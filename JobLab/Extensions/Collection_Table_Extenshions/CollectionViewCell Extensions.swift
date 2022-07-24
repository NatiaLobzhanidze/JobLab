//
//  CollectionViewCell Extensions.swift
//  Financor
//
//  Created by Natia's Mac on 10/12/2021.
//

import Foundation
import UIKit

extension UICollectionViewCell {
    static var identifier: String {
        return String(describing: self)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle.main)
    }
}
