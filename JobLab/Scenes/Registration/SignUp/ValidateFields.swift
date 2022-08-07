//
//  ValidateFields.swift
//  JobLab
//
//  Created by Natia's Mac on 06.08.22.
//

import Foundation
import UIKit

extension SignUpViewController {
    
    func validateFields(ofType business: Bool, personal: Bool ) -> String? {
        var textFieldsArr: [UITextField]
        if personal {
            textFieldsArr = [userMail, userName, userPassword]
        } else {
            textFieldsArr = [userMail, userName, userPassword, companyId, companyName]
        }
        for i in 0..<textFieldsArr.count {
            if textFieldsArr[i].text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
                return "Please Fill In All Fields"
            }
        }
        
        
        let cleanPassword = userPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if isPasswordValid(cleanPassword) == false  {
            
            return  "Please make sure your password is minimum 8 characters, at least 1 Uppercase Alphabet, 1 Lowercase Alphabet and 1 Number:"
            
        }
        return nil
    }
    
    func isPasswordValid(_ password : String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$")
        
        return passwordTest.evaluate(with: password)
    }
}





