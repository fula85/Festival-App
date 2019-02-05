//
//  DetailViewController.swift
//  Festival App
//
//  Created by mobapp06 on 05/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit
import WebKit
class DetailViewController: UIViewController {
    
    @IBOutlet weak var lblNaamArtist: UILabel!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var lblOmschrijving: UITextView!
    
    /*override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
