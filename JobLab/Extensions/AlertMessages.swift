//
//  AllertMessages.swift
//  JobLab
//
//  Created by Natia's Mac on 06.08.22.
//

import Foundation
import UIKit

extension UIViewController {
//Show a basic alert
    func showAlert(alertText : String, alertMessage : String, addActionTitle: String) {
        
    let alert = UIAlertController(title: alertText, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: addActionTitle, style: .cancel))
//Add more actions as you see fit
self.present(alert, animated: true, completion: nil)
  }
}

