//
//  NextViewController.swift
//  MapAndProtocol
//
//  Created by 高野隆正 on 2020/06/08.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

protocol SearchLocationDelegate {
    func searchLocation(idoValue: String, keidoValue: String)
}

class NextViewController: UIViewController {

    @IBOutlet weak var idoTextField: UITextField!
    @IBOutlet weak var keidoTextField: UITextField!
    
    var searchDelegate: SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func okAction(_ sender: Any) {
        
        let idoValue = idoTextField.text!
        let keidoValue = keidoTextField.text!
        
        searchDelegate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)
        
        if idoTextField.text != nil && keidoTextField.text != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    
}
