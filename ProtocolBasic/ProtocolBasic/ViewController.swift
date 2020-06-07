//
//  ViewController.swift
//  ProtocolBasic
//
//  Created by 高野隆正 on 2020/06/08.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var count: Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func catchData(count: Int) {
        
        resultLabel.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
    
}

