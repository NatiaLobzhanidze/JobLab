//
//  AddButtontoWelcomePageExtension.swift
//  JobLab
//
//  Created by Natia's Mac on 23.07.22.
//

import Foundation
import UIKit

extension WelcomePageViewController {
    func addButton(){
        nextPageBtn.setTitle("Next", for: .normal)
        nextPageBtn.backgroundColor = .blue
    
        nextPageBtn.leadingAnchor.constraint(equalTo: mypageControl.trailingAnchor, constant: 30).isActive = true
        nextPageBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        nextPageBtn.centerYAnchor.constraint(equalTo: mypageControl.centerYAnchor, constant: 0).isActive = true
        nextPageBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
}
}
