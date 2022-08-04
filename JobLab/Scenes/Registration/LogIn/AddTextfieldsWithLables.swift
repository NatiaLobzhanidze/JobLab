//
//  AddTextfieldsWithLables.swift
//  JobLab
//
//  Created by Natia's Mac on 04.08.22.
//

import Foundation
import UIKit

extension LogInViewController {
    
    func addTitleForTextfield(field label: UILabel, name: String) {
        label.text = name
        label.textColor = .blue
        label.font = .systemFont(ofSize: 14)
        
    }
    
    func addTextField(with textField: UITextField, placeholder: String) {
        textField.placeholder = placeholder
            textField.keyboardType = UIKeyboardType.default
            textField.returnKeyType = UIReturnKeyType.done
            textField.autocorrectionType = UITextAutocorrectionType.no
            textField.font = UIFont.systemFont(ofSize: 13)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
          //  textField.clearButtonMode = UITextField.ViewMode.whileEditing;
//            //textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
//        textField.layer.borderWidth = 5
//        textField.layer.borderColor = UIColor.white.cgColor
//        textField.backgroundColor = .white
//            textField.layer.cornerRadius = 18
    }
    
    func createLbandTextFld(with textfield: UITextField, lableName: String, titleLB: UILabel, placeholder: String) {
        addTitleForTextfield(field: titleLB, name: lableName)
        addTextField(with: textfield, placeholder: placeholder)
    }
}
