//
//  SoundFili.swift
//  QuestionApp2
//
//  Created by 高野隆正 on 2020/06/10.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile {
    
    var player: AVAudioPlayer?
    
    func playSound(fileName: String, extensionName: String) {
        
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
            
        }catch{
            
            print("再生エラー")
            
        }
    }
    
}
