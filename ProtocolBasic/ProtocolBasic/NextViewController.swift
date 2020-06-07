//
//  NextViewController.swift
//  ProtocolBasic
//
//  Created by 高野隆正 on 2020/06/08.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    
    func catchData(count: Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count: Int = 0
    var delegate: CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func plusAction(_ sender: Any) {
        
        count = count + 1
        label.text = String(count)
    }
    
    @IBAction func back(_ sender: Any) {
        
        delegate?.catchData(count: count)
        
        dismiss(animated: true, completion: nil)
    }
    
}
