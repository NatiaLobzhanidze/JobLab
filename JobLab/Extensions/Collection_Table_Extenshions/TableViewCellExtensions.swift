//
//  TableViewCellExtensions.swift
//  Financor
//
//  Created by Natia's Mac on 20/12/2021.
//

import Foundation
import UIKit

extension UITableViewCell {
    static var identifier: String { String(describing: self) }
    
    static var nib: UINib { UINib(nibName: identifier, bundle: nil) }
}
