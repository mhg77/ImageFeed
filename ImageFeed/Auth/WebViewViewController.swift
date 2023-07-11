//
//  WebViewViewController.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 11.07.2023.
//

import UIKit
import WebKit

final class WebViewViewController: UIViewController {
    @IBOutlet private var webView: WKWebView!
    @IBOutlet private var backButton: UIButton!
    
    @IBAction func didTapBackButton(_ sender: Any) {
    }
    
}
