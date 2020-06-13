//
//  ViewController.swift
//  GoogleAdmob
//
//  Created by 高野隆正 on 2020/06/13.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-4261657234388757/9358362223"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        
    }


}

