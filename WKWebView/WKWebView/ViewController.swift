//
//  ViewController.swift
//  WKWebView
//
//  Created by 高野隆正 on 2020/06/07.
//  Copyright © 2020 高野隆正. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView = WKWebView()

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var toolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.frame = CGRect(x: 0, y: toolBar.frame.size.height, width: view.frame.size.width, height: view.frame.size.height - toolBar.frame.size.height * 2)
        
        view.addSubview(webView)
        
        webView.navigationDelegate = self
        let url = URL(string: "https://www.yahoo.co.jp/")
        let request = URLRequest(url: url!)
        webView.load(request)
        
    
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        indicator.stopAnimating()
    }

    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func go(_ sender: Any) {
        webView.goForward()
    }
    
}

