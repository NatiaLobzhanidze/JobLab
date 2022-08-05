//
//  AddTextFields.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension SignUpViewController {
    
    // create txtfields array, placeholders,
    
    func maketextFld() {
        
    let textfields: [UITextField] = [userName, userMail, userPassword, repeatePassword, companyName, companyId]
    let signUpTextFields = ["Username", "Email Address", "Password", "Repeate Password", "Company Name", "Company ID"]
        
        for i in 0...5 {
            
            textfields[i].placeholder = signUpTextFields[i]
            textfields[i].borderStyle = UITextField.BorderStyle.roundedRect
            textfields[i].keyboardType = UIKeyboardType.default
            textfields[i].returnKeyType = UIReturnKeyType.done
            textfields[i].autocorrectionType = UITextAutocorrectionType.no
            textfields[i].font = UIFont.systemFont(ofSize: 13)
            stackView.addArrangedSubview(textfields[i])
            
        }
    }
    
}
