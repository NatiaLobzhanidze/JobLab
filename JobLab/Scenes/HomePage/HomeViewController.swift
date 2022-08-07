//
//  HomeViewController.swift
//  JobLab
//
//  Created by Natia's Mac on 05.08.22.
//

import UIKit

class HomeViewController: UIViewController {
    
// Headline
    let headlineLB: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(headlineLB)
        addHeadlineTitle()
    }
    
    


}
