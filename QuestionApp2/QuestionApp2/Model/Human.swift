//
//  Human.swift
//  QuestionApp2
//
//  Created by 高野隆正 on 2020/06/10.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import Foundation

class Human: Animal {
    
    override func brath() {
        super.brath()
        
        profile()
        
    }
    
    func profile() {
        
        print("人間です")
        
    }
    
}
