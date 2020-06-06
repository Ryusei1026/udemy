//
//  ViewController.swift
//  Modal
//
//  Created by 高野隆正 on 2020/06/05.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        count = count + 1
        label.text = String(count)
        
        if count == 10 {
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
            nextVC.count2 = count
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.count2 = count
    }
    
}

