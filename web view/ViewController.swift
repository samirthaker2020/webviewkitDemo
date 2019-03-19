//
//  ViewController.swift
//  web view
//
//  Created by Owner on 2019-03-18.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
       /* let url=URL(string: "https://www.google.com")
        let urlreq=URLRequest(url:url!)
        webview.load(urlreq)*/
        loadFile()
    }

    private func loadFile(){
        let localfilePath = Bundle.main.url(forResource: "Home", withExtension: "html");
        let myRequest = NSURLRequest(url: localfilePath!);
        self.webview.load(myRequest as URLRequest)
        
    }
}

