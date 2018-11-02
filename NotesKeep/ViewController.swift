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
        
        webView?.navigationDelegate = self
        webView?.load(URLRequest(url: url))
    }

}

extension ViewController: WKNavigationDelegate {
    
    func handle(error: Error) {
        NSAlert(error: error).runModal()
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        handle(error: error)
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        handle(error: error)
    }
    
}
