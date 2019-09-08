//
//  CreditsViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 2/9/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func openUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    @IBAction func Freepik(_ sender: Any) {
        openUrl(urlStr: "https://www.freepik.com")
    }
    
    @IBAction func Flaticon(_ sender: Any) {
        openUrl(urlStr: "https://www.flaticon.com")
    }

}
