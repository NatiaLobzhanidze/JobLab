//
//  AddTitleToWelcomePageExtension.swift
//  JobLab
//
//  Created by Natia's Mac on 23.07.22.
//

import Foundation
import UIKit

extension WelcomePageViewController {
    func addNameLabel(){
        appNameLB.text = "Job Lab"
        appNameLB.textColor = .white
        appNameLB.textAlignment = .center
        let left =  NSLayoutConstraint(item: appNameLB,
                                         attribute: .left,
                                         relatedBy: .equal,
                                       toItem: view,
                                         attribute: .left,
                                         multiplier: 1,
                                       constant: 30).isActive = true
        
        let top = NSLayoutConstraint(item: appNameLB,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: view.safeAreaLayoutGuide,
                                     attribute: .top,
                                     multiplier: 1,
                                     constant: 50).isActive = true
        let right =  NSLayoutConstraint(item: appNameLB,
                                          attribute: .right,
                                          relatedBy: .equal,
                                        toItem: view,
                                          attribute: .right,
                                          multiplier: 1,
                                        constant: -30).isActive = true
        let height = NSLayoutConstraint(item: appNameLB,
                                        attribute: .height,
                                        relatedBy: .equal,
                                      toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1,
                                      constant: 30).isActive = true
    
    }
    
}
