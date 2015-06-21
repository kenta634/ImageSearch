//
//  ViewController.swift
//  Image Search
//
//  Created by 高橋健太 on 2015/06/18.
//  Copyright (c) 2015年 高橋健太. All rights reserved.
//

import UIKit

class searchViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var webView : UIWebView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    // 検索機能で使うURL
    let frontsearchUrl = "https://www.google.co.jp/search?q="
    let backsearchUrl = "&tbm=isch"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //文字列で指定されたURLをWebViewで開く。
    func openUrl(urlString: String){
        let url = NSURL(string: urlString)
        let urlRequest = NSURLRequest(URL: url!)
        webView.loadRequest(urlRequest)
    }
    
    // MARK: - UISearchBarDelegate
    func searchBarSearchButtonClicked(searchBar: UISearchBar){
        if let searchText = searchBar.text {
            let url = frontsearchUrl + searchText + backsearchUrl.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
            openUrl(url)
            searchBar.resignFirstResponder()
        }
    }




}

