//
//  LoginViewController.swift
//  DigiCheckIn
//
//  Created by Umayr Mooraja on 2021-03-13.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        usernameInput.delegate = self
        passwordInput.delegate = self
        
       
        
        setupUI()
        
        
    }
    
    @objc func attemptLogin(){
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: textFieldShouldReturn
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    //MARK: setupUI
    func setupUI(){
        
        view.backgroundColor = UIAttributes.utilityWhite
        
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height/8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(loginBackdropView)
        loginBackdropView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBackdropView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        loginBackdropView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginBackdropView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/6).isActive = true
        loginBackdropView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/6).isActive = true
        
        view.addSubview(usernameInput)
        usernameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        usernameInput.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        usernameInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        usernameInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/5.5).isActive = true
        usernameInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/5.5).isActive = true
        
        view.addSubview(passwordBackdropView)
        passwordBackdropView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordBackdropView.topAnchor.constraint(equalTo: usernameInput.bottomAnchor, constant: 15).isActive = true
        passwordBackdropView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordBackdropView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/6).isActive = true
        passwordBackdropView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/6).isActive = true
        
        view.addSubview(passwordInput)
        passwordInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordInput.topAnchor.constraint(equalTo: usernameInput.bottomAnchor, constant: 15).isActive = true
        passwordInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/5.5).isActive = true
        passwordInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/5.5).isActive = true
        
        view.addSubview(loginButton)
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordInput.bottomAnchor, constant: 15).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/5.5).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/5.5).isActive = true
        
        
        view.addSubview(signupButton)
        signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signupButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -view.frame.height/24).isActive = true
        signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    //MARK: UI Declarations
    let titleLabel:UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        let labelContent = NSAttributedString(string: "DigiCheckIn", attributes: [NSAttributedString.Key.font: UIAttributes.appTitleFontOne, NSAttributedString.Key.foregroundColor: UIAttributes.utilityGreen])
         label.attributedText = labelContent
        return label
    }()
   
    let loginLabel:UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        let labelContent = NSAttributedString(string: "Login to continue", attributes: [NSAttributedString.Key.font: UIAttributes.titleFontOne, NSAttributedString.Key.foregroundColor: UIAttributes.utilityGreen])
         label.attributedText = labelContent
        return label
    }()
    
    let loginBackdropView:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let usernameInput:UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .clear
        textField.textColor = .black
        textField.layer.borderColor = UIColor.clear.cgColor
        textField.layer.cornerRadius = 0
        textField.layer.borderWidth = 0
        textField.adjustsFontSizeToFitWidth = true
        textField.minimumFontSize = 14
        textField.textAlignment = .left
        textField.contentVerticalAlignment = .center
        textField.returnKeyType = .done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    
    let passwordBackdropView:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let passwordInput:UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .clear
        textField.textColor = .black
        textField.layer.borderColor = UIColor.clear.cgColor
        textField.layer.cornerRadius = 0
        textField.layer.borderWidth = 0
        textField.adjustsFontSizeToFitWidth = true
        textField.minimumFontSize = 14
        textField.textAlignment = .left
        textField.contentVerticalAlignment = .center
        textField.returnKeyType = .done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIAttributes.utilityGreen
        button.layer.cornerRadius = 10
        button.setAttributedTitle(NSAttributedString(string: "LOGIN", attributes: [NSAttributedString.Key.font: UIAttributes.titleFontOne, NSAttributedString.Key.foregroundColor: UIAttributes.utilityWhite]), for: .normal)
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.titleLabel?.numberOfLines = 0
        button.setAttributedTitle(NSAttributedString(string: "Don't have an account? Sign up.", attributes: [NSAttributedString.Key.font: UIAttributes.signupButtonFont, NSAttributedString.Key.foregroundColor: UIAttributes.utilityGreen]), for: .normal)
        button.addTarget(self, action: #selector(signupPage), for: .touchDown)
        return button
    }()
    
    @objc func signupPage() {
        present(ViewController(), animated: true, completion: nil)
    }

    
}
