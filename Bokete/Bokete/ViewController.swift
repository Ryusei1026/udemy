//
//  ViewController.swift
//  Bokete
//
//  Created by 高野隆正 on 2020/06/11.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage
import SwiftyJSON
import Photos

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var commentTextView: UITextView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        commentTextView.layer.cornerRadius = 20.0
        
        PHPhotoLibrary.requestAuthorization { status in
            
            switch(status){
                
            case .authorized:
                break
                
            case .denied:
                break
                
            case .notDetermined:
                break
                
            case .restricted:
                break
                
            }
            
        }
        
    }
    
    func getImages(keyword: String) {
        
        let url = "https://pixabay.com/api/?key=16984180-e6ebd458359a92b5a58fbdf84&q=\(keyword)"
        
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { response in
            
            switch(response.result){
                
            case .success:
                let json: JSON = JSON(response.data as Any)
                var imageString = json["hits"][self.count]["webformatURL"].string
                
                if imageString == nil {
                    self.count = 0
                    imageString = json["hits"][self.count]["webformatURL"].string
                }
                
                self.imageView.sd_setImage(with: URL(string: imageString!), completed: nil)
                
            case .failure(let error):
                print(error)
            }
        }
        
    }

    @IBAction func next(_ sender: Any) {
        
        count += 1
        
        if searchTextField.text == "" {
        getImages(keyword: "funny")
        }else{
            getImages(keyword: searchTextField.text!)
        }
        
        
    }
    
    @IBAction func search(_ sender: Any) {
        
        self.count = 0
        if searchTextField.text == "" {
            getImages(keyword: "funny")
        }else{
            getImages(keyword: searchTextField.text!)
        }
    }
    
    @IBAction func decision(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let shareVC = segue.destination as? ShareViewController
        shareVC?.commentString = commentTextView.text
        shareVC?.resultImage = imageView.image!
        
    }
}

