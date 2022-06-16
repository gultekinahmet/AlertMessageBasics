//
//  ViewController.swift
//  UyariMesajlariProjectBTK
//
//  Created by Ahmet Gültekin on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var passwordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        var alertMessage = UIAlertController()
        let okButton = createAlertAction(title: "OK", style: "default")
        
        
        if emailTextField.text == "" {
            alertMessage = createAlertMessage(title: "Warning", message: "E-mail field cannot be empty")
        } else if passwordTextField.text == "" || passwordAgainTextField.text == "" {
            alertMessage = createAlertMessage(title: "Warning", message: "Password fields cannot be empty")
        } else if passwordTextField.text != passwordAgainTextField.text {
            alertMessage = createAlertMessage(title: "Warning", message: "Passwords do not match, please retype.")
        } else {
            alertMessage = createAlertMessage(title: "Successful", message: "Your account has created.")
        }
        
        
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true)
        
    }
    
    
    func createAlertMessage(title: String, message: String) -> UIAlertController {
        
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        return alertMessage
    }
    
    func createAlertAction(title: String, style: String) -> UIAlertAction {
    
        var alertAction = UIAlertAction()
        
        if style == "cancel" {
            alertAction = UIAlertAction(title: title, style: UIAlertAction.Style.cancel)
        } else if style == "default" {
            alertAction = UIAlertAction(title: title, style: UIAlertAction.Style.default)
        } else if style == "destructive" {
            alertAction = UIAlertAction(title: title, style: UIAlertAction.Style.destructive)
        }
        
        return alertAction
    }
    
    
}

