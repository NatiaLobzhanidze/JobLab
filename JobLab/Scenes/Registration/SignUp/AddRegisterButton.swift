//
//  AddRegisterButton.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension SignUpViewController {
    
    func addRegisterButton() {
        registerBtn.setTitle("Create Account", for: .normal)
        registerBtn.translatesAutoresizingMaskIntoConstraints = false
        registerBtn.backgroundColor = .blue
        registerBtn.layer.cornerRadius = 15
        
        registerBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        registerBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30 ).isActive = true
        registerBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        registerBtn.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
}

