//
//  UIAttributes.swift
//  DigiCheckIn
//
//  Created by Toby moktar on 2021-03-13.
//


import Foundation
import UIKit

struct UIAttributes {
    
    //Colors
    static let utilityWhite: UIColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
    static let utilityBlack: UIColor = UIColor(red: 7/255, green: 7/255, blue: 7/255, alpha: 1.0)
    static let utilityGreen: UIColor = UIColor(red: 67/255, green: 176/255, blue: 42/255, alpha: 1.0)
    static let utilityGray:UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.8)
    
    //Fonts
    static let appTitleFontOne: UIFont = UIFont.init(name: "AvenirNext-Bold", size: 50)!
    static let titleFontOne:UIFont = UIFont.init(name: "AvenirNext-DemiBold", size: 24)!
    static let usernameLoginFont:UIFont = UIFont.init(name: "AvenirNext-DemiBold", size: 16)!
    static let signupButtonFont:UIFont = UIFont.init(name: "Avenir-Light", size: 16)!
    
}
