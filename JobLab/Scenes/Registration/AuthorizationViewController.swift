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
    let stackView: UIStackView = UIStackView()
    
    //buttons signIng or sign up
    let logInBtn: UIButton = UIButton()
    let signUpBtn: UIButton = UIButton()
    
    //use as guest
    let guestBtn: UIButton = UIButton()
    
    
    
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
        guestBtn.setTitle("visit as guest", for: .normal)
     
        logInBtn.heightAnchor.constraint(equalToConstant: 45).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 45).isActive = true
        guestBtn.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        logInBtn.widthAnchor.constraint(equalToConstant: 145).isActive = true
        signUpBtn.widthAnchor.constraint(equalToConstant: 145).isActive = true
        guestBtn.widthAnchor.constraint(equalToConstant: 145).isActive = true
        
        logInBtn.backgroundColor = .blue
    
        signUpBtn.backgroundColor = .blue
        
        guestBtn.backgroundColor = .blue
    }
    
    func addStackview() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        self.view.addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30 ).isActive = true
        stackView.topAnchor.constraint(equalTo: posterView.bottomAnchor, constant:  30).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        stackView.addArrangedSubview(logInBtn)
        stackView.addArrangedSubview(signUpBtn)
        stackView.addArrangedSubview(guestBtn)
    
    }
    
    func addPosterView() {
        
        posterView.translatesAutoresizingMaskIntoConstraints = false
        posterView.image = UIImage(named: "job1")
        posterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        posterView.topAnchor.constraint(equalTo: headlineLB.bottomAnchor, constant: 30 ).isActive = true
        posterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        posterView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
    func addHeadlineLb() {
       
        headlineLB.translatesAutoresizingMaskIntoConstraints = false
        let job = "job"
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
