//
//  AddImageView.swift
//  JobLab
//
//  Created by Natia's Mac on 07.08.22.
//

import Foundation
import UIKit

extension HomeViewController {
    
    func addLogoImage() {
        logoImage.image = UIImage(named: "job")
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        logoImage.topAnchor.constraint(equalTo: headlineLB.bottomAnchor, constant: 30).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
    }
}
