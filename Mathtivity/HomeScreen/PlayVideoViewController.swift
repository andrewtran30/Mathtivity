//
//  PlayVideoViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/25/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit
import WebKit
class PlayVideoViewController: UIViewController {
    @IBOutlet weak var videoWebView: WKWebView!
    @IBOutlet weak var videoTitle: UILabel!
    var sentCode = ""
    var theVideoTitle = ""
    var videosInPlayVideo: [Video] = []
    var titleInPlayVideo = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: sentCode)
        videoTitle.text! = theVideoTitle
    }
    func getVideo(videoCode: String) {
        var url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        videoWebView.load(URLRequest(url: url!))
    }
}
