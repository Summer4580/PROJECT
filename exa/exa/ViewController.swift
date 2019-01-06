//
//  ViewController.swift
//  exa
//
//  Created by 20161104580 on 2019/1/4.
//  Copyright © 2019 20161104580. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    lazy private var progressView: UIProgressView = {
        self.progressView = UIProgressView.init(frame: CGRect(x: CGFloat(0), y: CGFloat(65), width: UIScreen.main.bounds.width, height: 2))
        self.progressView.tintColor = UIColor.blue      // 进度条颜色
        self.progressView.trackTintColor = UIColor.white // 进度条背景色
        return self.progressView
    }()
    let progressview = UIProgressView(frame: CGRect.init(x: 0, y: 0, width: 200, height: 10))
    @IBOutlet weak var textfile: UITextField!
    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webview)
        view.addSubview(progressView)
        webview.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
        webview.load(URLRequest.init(url: URL.init(string: "https://www.baidu.com/")!))
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "estimatedProgress"{
            progressView.alpha = 1.0
            progressView.setProgress(Float(webview.estimatedProgress), animated: true)
            if webview.estimatedProgress >= 1.0 {
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseOut, animations: {
                    self.progressView.alpha = 0
                }, completion: { (finish) in
                    self.progressView.setProgress(0.0, animated: false)
                })
            }
        }
    }
    
    @IBAction func gobackclick(_ sender: Any) {
        webview.goBack()
    }
    
    @IBAction func gotoclick(_ sender: Any) {
        webview.goForward()
    }
    
    @IBAction func refreshclick(_ sender: Any) {
        webview.reload()
    }
    @IBAction func searchclick(_ sender: Any) {
        let urls = textfile.text
        webview.load(NSURLRequest(url: NSURL(string: urls!)! as URL)as URLRequest)
    }
    @IBAction func stopclick(_ sender: Any) {
        webview.stopLoading()
    }
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("开始获取网页内容")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("加载完成")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("加载失败")
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
