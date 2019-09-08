//
//  VideosViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/25/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class VideosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var videos: [Video] = []
    var titleOfCourse = ""
    var practiceItemsInVideos: [Practice] = []
    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var videosTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        courseTitle.text = titleOfCourse
        let practiceSegue = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe: )))
        practiceSegue.direction = UISwipeGestureRecognizer.Direction.left
    self.view.addGestureRecognizer(practiceSegue)
        
        videosTableView.dataSource = self
        videosTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let video = videos[indexPath.row]
        cell.textLabel?.text = video.videoTitle
        cell.imageView?.image = UIImage(named: "playButton")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let clickedVideo = videos[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "watchVideoSegue", sender: clickedVideo)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "watchVideoSegue" {
            let nextVC = segue.destination as! PlayVideoViewController
            var video = sender as! Video
            nextVC.sentCode = video.videoURL
            nextVC.theVideoTitle = video.videoTitle
        } else if segue.identifier == "practiceSegue" {
            var currentVC = sender as! VideosViewController
            let nextVC = segue.destination as! PracticeViewController
            nextVC.titleOfPractice = currentVC.titleOfCourse
            nextVC.practiceItems = currentVC.practiceItemsInVideos
            nextVC.videosInPractice = currentVC.videos
        }
    }
    @IBAction func backFromModal(_segue: UIStoryboardSegue) {
        
    }
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        if swipe.direction.rawValue == 2 {
            performSegue(withIdentifier: "practiceSegue", sender: self)
        }
    }
}
// RAW VALUES FOR SWIPE GESTURES
// 1 = SWIPE RIGHT
// 2 = SWIPE LEFT 
//extension UIViewController {
//    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
//        let originalVideosVC = VideosViewController()
//        let originalPracticeVC = PracticeViewController()
//
//        switch swipe.direction.rawValue {
//        case 1:
//            performSegue(withIdentifier: "videosLearnSegue", sender: self)
//        case 2:
//            originalPracticeVC.titleOfPractice = originalVideosVC.titleOfCourse
//            performSegue(withIdentifier: "practiceSegue", sender: self)
//        default:
//            break
//        }
//    }
//}
