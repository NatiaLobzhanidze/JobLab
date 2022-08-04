//
//  AddHeadlineTitle.swift
//  JobLab
//
//  Created by Natia's Mac on 04.08.22.
//

import Foundation
import UIKit

extension LogInViewController {
    
    
    func addHeadlineTitle(){
        headlineLB.translatesAutoresizingMaskIntoConstraints = false
        headlineLB.text = "Welcome Back!"
        headlineLB.textColor = .blue
        headlineLB.textAlignment = .center
        headlineLB.font = .systemFont(ofSize: 30, weight: .bold)
        
        // contraints
        headlineLB.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        headlineLB.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        headlineLB.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        headlineLB.heightAnchor.constraint(equalToConstant: 100).isActive = true
        

    }
}
