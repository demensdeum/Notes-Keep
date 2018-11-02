//
//  ViewController.swift
//  NotesKeep
//
//  Created by Ilia Prokhorov on 02/11/2018.
//  Copyright © 2018 demensdeum. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://keep.google.com/") else { return }
        
        webView?.load(URLRequest(url: url))
    }

}

