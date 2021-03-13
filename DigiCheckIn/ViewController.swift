//
//  ViewController.swift
//  DigiCheckIn
//
//  Created by Toby moktar on 2021-03-12.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
        
    
    var heightAnchor:CGFloat = 40.0
    var topAnchor: CGFloat = 18.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        fullNameInput.delegate = self
        ageInput.delegate = self
        sexInput.delegate = self
        heightInput.delegate = self
        weightInput.delegate = self
        healthCardInput.delegate = self
        emailInput.delegate = self
        passwordInput.delegate = self
        

        
        setupUI()
        
        
    }

    //MARK: textFieldShouldReturn
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    
    //MARK: setupUI
    func setupUI(){
        
        view.backgroundColor = UIAttributes.utilityWhite
        
        // Title Constraints
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height/12).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // Name Constraints
        view.addSubview(fullNameBackdrop)
        fullNameBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fullNameBackdrop.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: topAnchor).isActive = true
        fullNameBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        fullNameBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        fullNameBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(fullNameInput)
        fullNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fullNameInput.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: topAnchor).isActive = true
        fullNameInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        fullNameInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        fullNameInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
    
        // Age Constraints
        view.addSubview(ageBackdrop)
        ageBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ageBackdrop.topAnchor.constraint(equalTo: fullNameBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        ageBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        ageBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        ageBackdrop.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(ageInput)
        ageInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ageInput.topAnchor.constraint(equalTo: fullNameBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        ageInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        ageInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        ageInput.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/12).isActive = true
        
    
        // Sex Constraints
        view.addSubview(sexBackdrop)
        sexBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sexBackdrop.topAnchor.constraint(equalTo: fullNameBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        sexBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        sexBackdrop.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/18).isActive = true
        sexBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(sexInput)
        sexInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sexInput.topAnchor.constraint(equalTo: fullNameBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        sexInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        sexInput.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/12).isActive = true
        sexInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
        
        // Height Constraints
        view.addSubview(heightBackdrop)
        heightBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heightBackdrop.topAnchor.constraint(equalTo: ageBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        heightBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        heightBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        heightBackdrop.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(heightInput)
        heightInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heightInput.topAnchor.constraint(equalTo: ageBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        heightInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        heightInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        heightInput.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/12).isActive = true
        
        
        // Weight Constraints
        view.addSubview(weightBackdrop)
        weightBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weightBackdrop.topAnchor.constraint(equalTo: ageBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        weightBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        weightBackdrop.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/18).isActive = true
        weightBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(weightInput)
        weightInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weightInput.topAnchor.constraint(equalTo: ageBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        weightInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        weightInput.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/12).isActive = true
        weightInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
        
        // Health Card Constraints
        view.addSubview(healthCardBackdrop)
        healthCardBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        healthCardBackdrop.topAnchor.constraint(equalTo: weightBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        healthCardBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        healthCardBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        healthCardBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(healthCardInput)
        healthCardInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        healthCardInput.topAnchor.constraint(equalTo: weightBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        healthCardInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        healthCardInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        healthCardInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
        // Email Constraints
        view.addSubview(emailBackdrop)
        emailBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailBackdrop.topAnchor.constraint(equalTo: healthCardBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        emailBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        emailBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        emailBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(emailInput)
        emailInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailInput.topAnchor.constraint(equalTo: healthCardInput.bottomAnchor, constant: topAnchor).isActive = true
        emailInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        emailInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        emailInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
        // Password Constraints
        view.addSubview(passwordBackdrop)
        passwordBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordBackdrop.topAnchor.constraint(equalTo: emailBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        passwordBackdrop.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        passwordBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        passwordBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(passwordInput)
        passwordInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordInput.topAnchor.constraint(equalTo: emailBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        passwordInput.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        passwordInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        passwordInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
        // Sign Up Button Constraints
        view.addSubview(signupButton)
        signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signupButton.topAnchor.constraint(equalTo: passwordBackdrop.bottomAnchor, constant: topAnchor).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
    }
    
    // MARK: DECLARING UI
    
    // TITLE LABEL
    let titleLabel:UILabel = {
            let label = UILabel()
            label.backgroundColor = .clear
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
        let labelContent = NSAttributedString(string: "Create Account", attributes: [NSAttributedString.Key.font: UIAttributes.titleFontOne, NSAttributedString.Key.foregroundColor: UIColor.black])
             label.attributedText = labelContent
            return label
        }()

    // Full Name UI
    let fullNameInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "First and Last Name", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let fullNameBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    

    // AGE UI
    let ageInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Age", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let ageBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // SEX UI
    let sexInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Sex", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let sexBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // HEIGHT UI
    let heightInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Height", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let heightBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // WEIGHT UI
    let weightInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Weight", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let weightBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()


    // Healthcard UI
    let healthCardInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Health Card Number", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let healthCardBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Email UI
    let emailInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let emailBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // Password UI
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
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font: UIAttributes.usernameLoginFont, NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIAttributes.usernameLoginFont
        return textField
    }()
    
    let passwordBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIAttributes.utilityGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Signup Button UI
    let signupButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIAttributes.utilityGreen
        button.layer.cornerRadius = 10
        button.setAttributedTitle(NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font: UIAttributes.titleFontOne, NSAttributedString.Key.foregroundColor: UIAttributes.utilityWhite]), for: .normal)
        return button
    }()
    
}
