//
//  WithoutMP3.swift
//  QuestionApp2
//
//  Created by 高野隆正 on 2020/06/10.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import Foundation

class WithoutMP3: SoundFile {
    
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3" {
            
            print("このファイルは再生できません")
            
        }
        player?.stop()
        
    }
}
