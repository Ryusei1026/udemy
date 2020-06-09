//
//  NextViewController.swift
//  QuestionApp2
//
//  Created by 高野隆正 on 2020/06/09.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

protocol NowScoreDelegate {
    func nowScore(score: Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    
    var correctedCount = Int()
    var wrongedCount = Int()
    var beforeCount = Int()
    
    var delegate: NowScoreDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongedCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil {
            
            beforeCount = UserDefaults.standard.integer(forKey: "beforeCount")
            
        }

    }
    

    @IBAction func backToHome(_ sender: Any) {
        
        if beforeCount < correctedCount {
            
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            delegate?.nowScore(score: correctedCount)
            
        }else{
            
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
            
        }
        
        dismiss(animated: true, completion: nil)
    }
    
}
