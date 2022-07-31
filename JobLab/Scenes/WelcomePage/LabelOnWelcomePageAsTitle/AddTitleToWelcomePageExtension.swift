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
        appNameLB.textColor = .blue
        appNameLB.textAlignment = .center
        appNameLB.font = .systemFont(ofSize: 30, weight: .bold)
      
        //MARK: add Constraints to app name label
        
        appNameLB.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        appNameLB.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        appNameLB.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        appNameLB.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
