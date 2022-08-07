//
//  LogInViewController.swift
//  JobLab
//
//  Created by Natia's Mac on 04.08.22.
//

import UIKit
import FirebaseAuth

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
    lazy var goToSignUp: UIButton = {
        let goToSignUp = UIButton()
        goToSignUp.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goToSignUp)
        goToSignUp.setTitleColor(.blue, for: .normal)
        return goToSignUp
    }()
    ///
    let notMemberLb: UILabel = UILabel()
    
    
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
       
        setUpView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        maillTextFld.becomeFirstResponder()
    }
    
    
    func setUpView() {
        
        view.backgroundColor = .white
        view.addSubview(headlineLB)
        view.addSubview(logedInButton)
        view.addSubview(notMemberLb)
        
        addHeadlineTitle()
        setupStackView()
        addButton()
        addGoToLb()
        addGoToSignUpButton()
        logedInButton.addTarget(self, action: #selector(tapedLogInBtn), for: .touchUpInside)
    }
    
    
    @objc func tapedLogInBtn() {
        let mail = maillTextFld.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordLbTextFld.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        Auth.auth().signIn(withEmail: mail, password: password) {
            (result, error) in
            if error != nil {
                self.showAlert(alertText: "Error message", alertMessage: "Error while log in "
                               , addActionTitle: "ok")
            } else {
                let vc = HomeViewController()
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
        }
        
    }
    func setupStackView() {
        
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
