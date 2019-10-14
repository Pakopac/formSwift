//
//  ViewController.swift
//  App
//
//  Created by SUPINT_12 on 14/10/2019.
//  Copyright © 2019 SUPINT_12. All rights reserved.
//

import UIKit

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

class ViewController: UIViewController, UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Try to find next responder
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            // Not found, so remove keyboard.
            textField.resignFirstResponder()
        }
        // Do not add a line break
        return false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "space.jpg")!)
        let width = self.view.frame.width
        let height = self.view.frame.height
        

        let textBottom = UILabel(frame: CGRect(x: 15, y: height - 50, width: width - 30, height: 50))
        textBottom.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue arcu non sapien scelerisque ultrices. Suspendisse aliquet sapien sit amet"
        textBottom.textColor = UIColor.white
        textBottom.font = textBottom.font.withSize(10)
        textBottom.numberOfLines = 0
        textBottom.sizeToFit()
        textBottom.textAlignment = .center
        view.addSubview(textBottom)
        
        let button = UIButton(frame: CGRect(x: 15, y: height - 140, width: width - 30, height: 40))
        button.backgroundColor = UIColor.purple
        button.setTitle("S'inscrire",for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.purple.cgColor
        view.addSubview(button)
        
        let inputConfirmPassword = UITextField(frame: CGRect(x: 15, y: height - 200, width: width - 30, height: 40))
        inputConfirmPassword.backgroundColor = UIColor.white
        inputConfirmPassword.placeholder = "Confirmer votre mot de passe"
        inputConfirmPassword.layer.cornerRadius = 10
        inputConfirmPassword.layer.borderWidth = 1
        inputConfirmPassword.layer.borderColor = UIColor.white.cgColor
        inputConfirmPassword.alpha = 0.9
        inputConfirmPassword.setLeftPaddingPoints(10)
        inputConfirmPassword.delegate = self as! UITextFieldDelegate
        inputConfirmPassword.tag = 0
        inputConfirmPassword.returnKeyType = UIReturnKeyType.done
        inputConfirmPassword.keyboardAppearance = UIKeyboardAppearance.alert;
        inputConfirmPassword.isSecureTextEntry = true

  
        view.addSubview(inputConfirmPassword)
        
        let inputPassword = UITextField(frame: CGRect(x: 15, y: height - 260, width: width - 30, height: 40))
        inputPassword.backgroundColor = UIColor.white
        inputPassword.placeholder = "Mot de passe"
        inputPassword.layer.cornerRadius = 10
        inputPassword.layer.borderWidth = 1
        inputPassword.layer.borderColor = UIColor.white.cgColor
        inputPassword.alpha = 0.9
        inputPassword.setLeftPaddingPoints(10)
        inputPassword.delegate = self as! UITextFieldDelegate
        inputPassword.tag = 3
        inputPassword.returnKeyType = UIReturnKeyType.next
        inputPassword.keyboardAppearance = UIKeyboardAppearance.alert;
        inputPassword.isSecureTextEntry = true
        view.addSubview(inputPassword)
        
        let email = UITextField(frame: CGRect(x: 15, y: height - 320, width: width - 30, height: 40))
        email.backgroundColor = UIColor.white
        email.placeholder = "Email"
        email.layer.cornerRadius = 10
        email.layer.borderWidth = 1
        email.layer.borderColor = UIColor.white.cgColor
        email.alpha = 0.9
        email.setLeftPaddingPoints(10)
        email.delegate = self as! UITextFieldDelegate
        email.tag = 2
        email.returnKeyType = UIReturnKeyType.next
        email.keyboardAppearance = UIKeyboardAppearance.alert;
        email.keyboardType = UIKeyboardType.emailAddress
        view.addSubview(email)
        
        let lastname = UITextField(frame: CGRect(x: 15, y: height - 380, width: width - 30, height: 40))
        lastname.backgroundColor = UIColor.white
        lastname.placeholder = "Nom"
        lastname.layer.cornerRadius = 10
        lastname.layer.borderWidth = 1
        lastname.layer.borderColor = UIColor.white.cgColor
        lastname.alpha = 0.9
        lastname.setLeftPaddingPoints(10)
        lastname.delegate = self as! UITextFieldDelegate
        lastname.tag = 1
        lastname.returnKeyType = UIReturnKeyType.next
        lastname.keyboardAppearance = UIKeyboardAppearance.alert;
        view.addSubview(lastname)
        
        let firstname = UITextField(frame: CGRect(x: 15, y: height - 440, width: width - 30, height: 40))
        firstname.backgroundColor = UIColor.white
        firstname.placeholder = "Prénom"
        firstname.layer.cornerRadius = 10
        firstname.layer.borderWidth = 1
        firstname.layer.borderColor = UIColor.white.cgColor
        firstname.alpha = 0.9
        firstname.setLeftPaddingPoints(10)
        firstname.delegate = self as! UITextFieldDelegate
        firstname.tag = 0
        firstname.returnKeyType = UIReturnKeyType.next
        firstname.keyboardAppearance = UIKeyboardAppearance.alert;
        view.addSubview(firstname)
        
        let logo = "Copenhagen_Suborbitals_logo.png"
        let logoImage = UIImage(named: logo)
        let logoImageView = UIImageView(image: logoImage!)
        logoImageView.frame = CGRect(x: width/2 - 100, y: height - 700, width: 200, height: 200)
        view.addSubview(logoImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

