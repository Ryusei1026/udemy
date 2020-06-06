//
//  NextViewController.swift
//  Modal
//
//  Created by 高野隆正 on 2020/06/07.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    
    var count2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text = String(count2)
    }

}
