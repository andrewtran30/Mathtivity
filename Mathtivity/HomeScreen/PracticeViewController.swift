//
//  PracticeViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/25/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class PracticeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var practiceTitle: UILabel!
    @IBOutlet weak var practiceItemsTableView: UITableView!
    var titleOfPractice = ""
    var practiceItems: [Practice] = []
    var videosInPractice: [Video] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        practiceTitle.text = titleOfPractice
        let videosLearnSegue = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe: )))
        videosLearnSegue.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(videosLearnSegue)
        practiceItemsTableView.delegate = self
        practiceItemsTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "videosLearnSegue" {
            let previousVC = segue.destination as! VideosViewController
            let currentVC = sender as! PracticeViewController
            previousVC.titleOfCourse = currentVC.titleOfPractice
            previousVC.videos = currentVC.videosInPractice
            previousVC.practiceItemsInVideos = currentVC.practiceItems
        } else if segue.identifier == "practiceItemSegue" {
            let currentVC = sender as! Practice
            let nextVC = segue.destination as! PracticeItemViewController
            nextVC.practiceTitle = currentVC.practiceTitle
            nextVC.question = currentVC.practiceQuestion
            nextVC.answer = currentVC.practiceAnswer
            
        }
        
    }
    @IBAction func backFromPractice(_segue: UIStoryboardSegue) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return practiceItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let practice = practiceItems[indexPath.row]
        cell.textLabel?.text = practice.practiceTitle
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selected = practiceItems[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "practiceItemSegue", sender: selected)
    }
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        if swipe.direction.rawValue == 1 {
            performSegue(withIdentifier: "videosLearnSegue", sender: self)
        }
    }
}
