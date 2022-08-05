//
//  AddHeadline.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension SignUpViewController {
    
    
    func addHeadlineTitle(){
        headlineLB.translatesAutoresizingMaskIntoConstraints = false
        headlineLB.text = "Create Account"
        headlineLB.textColor = .blue
        headlineLB.textAlignment = .center
        headlineLB.font = .systemFont(ofSize: 30, weight: .bold)
        
        // constraints
        headlineLB.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        
        headlineLB.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        headlineLB.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        headlineLB.heightAnchor.constraint(equalToConstant: 100).isActive = true
        

    }
}



