//
//  NextViewController.swift
//  FacebookLoginWithFirebase
//
//  Created by 高野隆正 on 2020/06/12.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit
import SDWebImage

class NextViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.object(forKey: "pictureURLString") != nil || UserDefaults.standard.object(forKey: "displayName") != nil {
            
            let imageString = UserDefaults.standard.object(forKey: "pictureURLString") as! String
            profileImageView.sd_setImage(with: URL(string: imageString), completed: nil)
            profileImageView.layer.cornerRadius = 20.0
            
            let displayName = UserDefaults.standard.object(forKey: "displayName") as! String
            userNameLabel.text = displayName
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        
    }
    


}
