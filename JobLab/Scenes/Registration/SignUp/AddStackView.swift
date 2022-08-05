//
//  AddStackView.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension SignUpViewController {
    // stackview
  
    func addStackView() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        stackView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 50).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
}
