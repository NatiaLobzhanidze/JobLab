//
//  AddSegmentedControll.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import Foundation
import UIKit

extension SignUpViewController {

    
    func addSegmentedControll() {
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.tintColor = .blue
        segmentedControl.addTarget(self, action: #selector(segmentedValueChanged), for: .valueChanged)
        
        segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        
        segmentedControl.topAnchor.constraint(equalTo: headlineLB.bottomAnchor, constant: 40).isActive = true
        
        segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
//        segmentedControl.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -30).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
   
    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        currentPageType = sender.selectedSegmentIndex == 0 ? .personal : .business
    }
    
    func setUpViewFor(pageType: SegmentType) {
        companyName.isHidden = (pageType == .personal)
        companyId.isHidden = (pageType == .personal)
        
    }
}
