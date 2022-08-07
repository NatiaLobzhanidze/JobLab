//
//  AddRegisterButton.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

extension SignUpViewController {
    
    func addRegisterButton() {
        registerBtn.setTitle("Create Account", for: .normal)
        registerBtn.translatesAutoresizingMaskIntoConstraints = false
        registerBtn.backgroundColor = .blue
        registerBtn.layer.cornerRadius = 15
        registerBtn.addTarget(self, action: #selector(registerBtnTapped), for: .touchUpInside)
        
        registerBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        registerBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30 ).isActive = true
        registerBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        registerBtn.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
    
    @objc func registerBtnTapped() {
        
        let error: String?
        
        switch currentPageType {
            
        case .business:
            error = validateFields(ofType: true, personal: false)
        
        case .personal:
            error = validateFields(ofType: false, personal: true)
            
        }
        
        if error != nil {
            self.showAlert(alertText: "Validation Error", alertMessage: "\(error ?? "Something was wrong")", addActionTitle: "OK")
        } else {
            
            let username = userName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let mail = userMail.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = userPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let companysName = companyName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let companyID = companyId.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            
            Auth.auth().createUser(withEmail: mail!, password: password!) { result, err in
                if err != nil {
                    self.showAlert(alertText: "Error", alertMessage: "Error creating user", addActionTitle: "ok")
                } else {
                    let db = Firestore.firestore()
                    
                    db.collection("userData").addDocument(data: [
                        "name" : username! ,
                        "email" : mail!,
                        "password" : password!,
                        "CompanyName" : companysName != nil ? companysName! : "Nocompany",
                        "CompanyId" : companyID != nil ? companyID! : "NoID",
                        "uid" : result!.user.uid
                        
                    ]){ error in
                        if error != nil {
                            print(Self.self)
                        }
                    }
                    let vc  = HomeViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                
            }
            
        }
    }
    
}
        


