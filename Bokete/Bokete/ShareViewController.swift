//
//  ShareViewController.swift
//  Bokete
//
//  Created by 高野隆正 on 2020/06/11.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    
    var commentString = String()
    var resultImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        commentLabel.text = commentString
        commentLabel.adjustsFontSizeToFitWidth = true
        resultImageView.image = resultImage

    }
    
    @IBAction func share(_ sender: Any) {
        
        let screenShotImage = takeScreenShot()
        let items = [screenShotImage] as [Any]
        
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        present(activityVC, animated: true, completion: nil)
        
    }
    
    func takeScreenShot() -> UIImage{
        
        let width = CGFloat(UIScreen.main.bounds.width)
        let height = CGFloat(UIScreen.main.bounds.height / 1.3)
        let size = CGSize(width: width, height: height)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        
        let screenShotImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return screenShotImage
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
}
