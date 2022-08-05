//
//  AddStackViews.swift
//  JobLab
//
//  Created by Natia's Mac on 04.08.22.
//

import Foundation
import UIKit

extension LogInViewController {
    
    //stackView
    
   
    func addMyStackView(top: UIStackView? , otherTop: UILabel?, constant: CGFloat) {
        firstStackview.distribution = .fillEqually
        secondStackview.distribution = .fillEqually
        firstStackview.spacing = 0
        guard let topview = otherTop else {
            
            secondStackview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            
            secondStackview.topAnchor.constraint(equalTo: firstStackview.bottomAnchor, constant: constant).isActive = true
            secondStackview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30 ).isActive = true
            secondStackview.heightAnchor.constraint(equalToConstant: 70).isActive = true
            return
        }
        firstStackview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        
        firstStackview.topAnchor.constraint(equalTo: topview.bottomAnchor, constant: constant).isActive = true
        
     
        firstStackview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30 ).isActive = true
        
        firstStackview.heightAnchor.constraint(equalToConstant: 70).isActive = true

    }
}
