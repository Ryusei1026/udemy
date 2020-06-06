//
//  ViewController.swift
//  Keyboard
//
//  Created by 高野隆正 on 2020/06/05.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var userNameTextView: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextView.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextView.text
        passwordLabel.text = passwordTextField.text
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

