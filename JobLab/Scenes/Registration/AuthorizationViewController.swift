//
//  AuthorizationViewController.swift
//  JobLab
//
//  Created by Natia's Mac on 29.07.22.
//

import UIKit

class AuthorizationViewController: UIViewController {

    //headline label
    let headlineLB: UILabel = UILabel()
    
    //Welcomeimages
    let posterView: UIImageView = UIImageView()
    
    //stackview
   lazy var  stackView: UIStackView = {
        let stackView = UIStackView()
       stackView.translatesAutoresizingMaskIntoConstraints = false
       stackView.axis = NSLayoutConstraint.Axis.vertical
       stackView.distribution = .fillEqually
       view.addSubview(stackView)
       return stackView
    }()
        
    //buttons signIng or sign up
    let logInBtn: UIButton = UIButton()
    let signUpBtn: UIButton = UIButton()
    
    //use as guest
    let horizontalStackView = UIStackView()
    let horizontalStackView2 = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(headlineLB)
        view.addSubview(posterView)
        view.backgroundColor = .white
        addHeadlineLb()
        addPosterView()
        createButtons()
        addStackview()
    }
    
    
   

    
    func createButtons() {
        logInBtn.setTitle("Log in ", for: .normal)
        signUpBtn.setTitle("Sign Up ", for: .normal)
      
     
        logInBtn.backgroundColor = .blue
        logInBtn.addTarget(self, action: #selector(tapLogInBtn), for: .touchUpInside)
        signUpBtn.addTarget(self, action: #selector(tappedsignUpBtn), for: .touchUpInside)
        signUpBtn.backgroundColor = .blue
       
    
    }
    
    @objc func tapLogInBtn() {
        let vc = LogInViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tappedsignUpBtn() {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    func addStackview() {
     
        stackView.isBaselineRelativeArrangement = false
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
    
        stackView.addArrangedSubview(logInBtn)
        stackView.addArrangedSubview(signUpBtn)
        stackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50 ).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
    
        
    
    }
    
    func addPosterView() {
        
        posterView.translatesAutoresizingMaskIntoConstraints = false
        posterView.image = UIImage(named: "job")
        posterView.alpha = 1
        posterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        posterView.topAnchor.constraint(equalTo: headlineLB.bottomAnchor, constant: 30 ).isActive = true
        posterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        posterView.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -50).isActive = true
//        posterView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
        
    }
    
    func addHeadlineLb() {
       
        headlineLB.translatesAutoresizingMaskIntoConstraints = false
        headlineLB.text = "Welcome to JobLab"
        headlineLB.textColor = .blue
        headlineLB.textAlignment = .center
        headlineLB.font = .systemFont(ofSize: 30, weight: .bold)
        
        // contraints
        headlineLB.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        headlineLB.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        headlineLB.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        headlineLB.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    

}
