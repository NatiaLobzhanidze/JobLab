//
//  SignUpViewController.swift
//  JobLab
//
//  Created by Natia's Mac on 04.08.22.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SignUpViewController: UIViewController {
    
  
    //headline
    let headlineLB: UILabel = UILabel()
    
    // segmented contorl
    
    let segmentedControl = UISegmentedControl(items: ["Personal User", "Bussiness User" ])
    
    let stackView = UIStackView()
    
    // textfields
    
    //username
    let userName = UITextField()
    
    // email
    let userMail = UITextField()
    //password
    let userPassword = UITextField()
    //repeate password
    let repeatePassword = UITextField()
    
     //textfield for id
    let companyName = UITextField()
    let companyId = UITextField()
    
    let registerBtn = UIButton()
    
    var currentPageType: SegmentType = .personal {
        didSet{
            setUpViewFor(pageType: currentPageType)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(headlineLB)
        view.addSubview(segmentedControl)
        view.addSubview(stackView)
        view.addSubview(registerBtn)
        setUpViewController()
       
    }

    func setUpViewController() {
        addHeadlineTitle()
        addSegmentedControll()
        addStackView()
        maketextFld()
        setUpViewFor(pageType: .personal)
        addRegisterButton()
    }
}
