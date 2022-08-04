//
//  LogInViewController.swift
//  JobLab
//
//  Created by Natia's Mac on 04.08.22.
//

import UIKit

class LogInViewController: UIViewController {
    
    //Headline
    let headlineLB: UILabel =  UILabel()
    
    
   // lable
    let maillLb: UILabel = UILabel()
    //textField
    let maillTextFld: UITextField = UITextField()
    
    //lable for password
    let passwordLb: UILabel = UILabel()
    //textField
    let passwordLbTextFld: UITextField = UITextField()
    
    //button
    
    let logedInButton: UIButton = UIButton()
    
    /// 2 lables
    ///
    let forgetPassordLb: UIButton = UIButton()
    ///
    let privacyLb: UIButton = UIButton()
    
    
    lazy var firstStackview: UIStackView = {
        let firststackview = UIStackView()
        firststackview.translatesAutoresizingMaskIntoConstraints = false
        firststackview.axis = NSLayoutConstraint.Axis.vertical
        view.addSubview(firststackview)
        return firststackview
    }()
    
    lazy var secondStackview: UIStackView = {
        let secondStackview = UIStackView()
        secondStackview.translatesAutoresizingMaskIntoConstraints = false
        secondStackview.axis = NSLayoutConstraint.Axis.vertical
        view.addSubview(secondStackview)
        return secondStackview
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(headlineLB)
        addHeadlineTitle()
        setupView()
    }
    
    func setupView() {
        
        addMyStackView(top: nil, otherTop: headlineLB, constant: 50)
        createLbandTextFld(with: maillTextFld, lableName: "E-mail", titleLB: maillLb, placeholder: "Enter your mail")
        firstStackview.addArrangedSubview(maillLb)
        firstStackview.addArrangedSubview(maillTextFld)
        
        addMyStackView(top: firstStackview, otherTop: nil, constant: 20)
        createLbandTextFld(with: passwordLbTextFld, lableName: "Password", titleLB: passwordLb, placeholder: "Enter your Password")
        secondStackview.addArrangedSubview(passwordLb)
        secondStackview.addArrangedSubview(passwordLbTextFld)
    }
    
   
  
}
