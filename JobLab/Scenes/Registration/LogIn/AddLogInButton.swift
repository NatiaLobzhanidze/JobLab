//
//  AddLogInButton.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension LogInViewController {
    
    func addButton() {
        logedInButton.translatesAutoresizingMaskIntoConstraints = false
        logedInButton.setTitle("Log In", for: .normal)
        logedInButton.backgroundColor = .blue
        logedInButton.layer.cornerRadius = 10
        logedInButton.addTarget(self, action: #selector(tapedLogIn), for: .touchUpInside)
        logedInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        logedInButton.topAnchor.constraint(equalTo: secondStackview.bottomAnchor , constant: 40).isActive = true
        logedInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        logedInButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
    }
    
    @objc func tapedLogIn() {
    // let vc = HomeViewController()
        //navigationController?.pushViewController(vc, animated: true)
    }

}
