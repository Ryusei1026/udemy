//
//  imagesModel.swift
//  QuestionApp2
//
//  Created by 高野隆正 on 2020/06/09.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import Foundation

class ImagesModel {
    
    let imageText: String
    let answer: Bool
    
    init(imageName: String, correctOrNot: Bool) {
        imageText = imageName
        answer = correctOrNot
    }
}
