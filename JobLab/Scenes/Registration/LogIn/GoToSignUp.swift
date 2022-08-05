//
//  GoToSignUp.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension LogInViewController {
    
    
    func addGoToLb(){
        notMemberLb.text = "Don't have an account yet?"
        notMemberLb.font = .systemFont(ofSize: 15)
        notMemberLb.translatesAutoresizingMaskIntoConstraints = false
        notMemberLb.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        notMemberLb.topAnchor.constraint(equalTo: logedInButton.bottomAnchor, constant: 50).isActive = true
        notMemberLb.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        
    }
    
    @objc func goToback() {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    func addGoToSignUpButton() {
        goToSignUp.addTarget(self, action: #selector(goToback), for: .touchUpInside)
        goToSignUp.setTitle("Sign Up", for: .normal)
        goToSignUp.leadingAnchor.constraint(equalTo: notMemberLb.trailingAnchor, constant: 5).isActive = true
        
        goToSignUp.widthAnchor.constraint(equalToConstant: 70).isActive = true
        goToSignUp.centerYAnchor.constraint(equalTo: notMemberLb.centerYAnchor, constant: 0).isActive = true
        goToSignUp.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
