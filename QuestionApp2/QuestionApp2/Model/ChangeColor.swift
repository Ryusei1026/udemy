//
//  ChangeColor.swift
//  QuestionApp2
//
//  Created by 高野隆正 on 2020/06/10.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit
import Foundation

class ChangeColor {
    
    func changeColor(topR: CGFloat, topG: CGFloat, topB: CGFloat, topAlpha: CGFloat, bottomR: CGFloat, bottomG: CGFloat, bottomB: CGFloat, bottomAlpha: CGFloat) -> CAGradientLayer {
        
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        let bottomColor = UIColor(red: bottomR, green: bottomG, blue: bottomB, alpha: bottomAlpha)
        
        let gradientColor = [topColor.cgColor, bottomColor.cgColor]
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
}
