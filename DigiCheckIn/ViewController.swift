//
//  ViewController.swift
//  DigiCheckIn
//
//  Created by Toby moktar on 2021-03-12.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // ** WHEN YOU ADD A NEW TEXT FIELD (WEIGHT, HEALTH CARD #, RSN FOR APT) YOU
        // NEED TO SET THE FIELDS DELEGATE TO ITS SELF **
        firstNameInput.delegate = self
        lastNameInput.delegate = self
        ageInput.delegate = self
        heightInput.delegate = self
        
        // METHOD WHICH ADDS THE UI AND SETUPS CONSTRAINTS
        setupUI()
        
        
    }
    
    // Dont worry about this
    //MARK: textFieldShouldReturn
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    
    //MARK: setupUI
    func setupUI(){
        
        // SETTING UP CONSTRAINTS FOR THE UI
        // ** ALL THE 'VIEW.FRAME.(HEIGHT/WIDTH)/(SOME NUMBER) IS JUST FOR
        // AUTO-LAYOUT TO LOOK GOOD ON ALL DEVICES **
        view.backgroundColor = .lightGray
        
        // ADDING THE TITLE LABEL AND SETTING THE DIFFERENT ANCHORS, ETC, ETC
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height/8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        // BACKDROP IS ADDED FIRST SO THAT IT LAYS BEHIND THE INPUT
        view.addSubview(firstNameBackdrop)
        firstNameBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstNameBackdrop.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        firstNameBackdrop.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstNameBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        firstNameBackdrop.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(firstNameInput)
        firstNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstNameInput.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        firstNameInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstNameInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        firstNameInput.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/12).isActive = true
        
        
        view.addSubview(lastNameBackdrop)
        lastNameBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lastNameBackdrop.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        lastNameBackdrop.heightAnchor.constraint(equalToConstant: 50).isActive = true
        lastNameBackdrop.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/18).isActive = true
        lastNameBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(lastNameInput)
        lastNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lastNameInput.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        lastNameInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        lastNameInput.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/12).isActive = true
        lastNameInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
        view.addSubview(ageBackdrop)
        ageBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ageBackdrop.topAnchor.constraint(equalTo: firstNameBackdrop.bottomAnchor, constant: 25).isActive = true
        ageBackdrop.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ageBackdrop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/18).isActive = true
        ageBackdrop.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(ageInput)
        ageInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ageInput.topAnchor.constraint(equalTo: firstNameBackdrop.bottomAnchor, constant: 25).isActive = true
        ageInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ageInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width/12).isActive = true
        ageInput.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width/12).isActive = true
        
    
        view.addSubview(heightBackdrop)
        heightBackdrop.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heightBackdrop.topAnchor.constraint(equalTo: firstNameBackdrop.bottomAnchor, constant: 25).isActive = true
        heightBackdrop.heightAnchor.constraint(equalToConstant: 50).isActive = true
        heightBackdrop.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/18).isActive = true
        heightBackdrop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/18).isActive = true
        
        view.addSubview(heightInput)
        heightInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heightInput.topAnchor.constraint(equalTo: firstNameBackdrop.bottomAnchor, constant: 25).isActive = true
        heightInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        heightInput.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width/12).isActive = true
        heightInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.width/12).isActive = true
        
    
    }
    
    // MARK: DECLARING UI
    
    // TITLE LABEL
    let titleLabel:UILabel = {
            let label = UILabel()
            label.backgroundColor = .clear
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            let labelContent = NSAttributedString(string: "Fill Out", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: UIColor.black])
             label.attributedText = labelContent
            return label
        }()

    // FIRST NAME INPUT TEXT FIELD
    let firstNameInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "First Name", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIFont.systemFont(ofSize: 18)
        return textField
    }()
    
    // FIRST NAME BACKDROP (GOES BEHIND THE FIRST NAME TEXT FIELD)
    let firstNameBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIColor(red: 128, green: 128, blue: 128, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // LAST NAME UI
    let lastNameInput:UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Last Name", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIFont.systemFont(ofSize: 18)
        return textField
    }()
    
    
    let lastNameBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIColor(red: 128, green: 128, blue: 128, alpha: 1)
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
        textField.attributedPlaceholder = NSAttributedString(string: "Age", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIFont.systemFont(ofSize: 18)
        return textField
    }()
    
    let ageBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIColor(red: 128, green: 128, blue: 128, alpha: 1)
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
        textField.attributedPlaceholder = NSAttributedString(string: "Height", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .yes
        textField.font = UIFont.systemFont(ofSize: 18)
        return textField
    }()
    
    let heightBackdrop:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIColor(red: 128, green: 128, blue: 128, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
}
