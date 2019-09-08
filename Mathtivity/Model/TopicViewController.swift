//
//  TopicViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/9/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController {

    @IBOutlet weak var topicTitle: UILabel!
    var topic = String()
    var programmingCourses = Selected.fetchProgrammingCourses()
    override func viewDidLoad() {
        super.viewDidLoad()
        topicTitle.text = topic

        
    }
}

extension TopicViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if topic == "Reusable Energy" {
            return programmingCourses.count
        } else if topic == "Programming" {
            return programmingCourses.count
            
        } else if topic == "Artificial Int." {
            return programmingCourses.count
            
        } else {
            return programmingCourses.count
        }
//        switch topic {
//        case "Reusable Energy":
//            return programmingCourses.count
//            break
//        case "Programming":
//            return programmingCourses.count
//            break
//        case "Artificial Int.":
//            return programmingCourses.count
//            break
//        default:
//            return programmingCourses.count
//            break
//        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "selectedCourseCell", for: indexPath) as! TopicCollectionViewCell
        if topic == "Reusable Energy" {
            cell.selectedCourse = programmingCourses[indexPath.item]
            return cell
            
        } else if topic == "Programming" {
            cell.selectedCourse = programmingCourses[indexPath.item]
            return cell
           
        } else if topic == "Artificial Int." {
            cell.selectedCourse = programmingCourses[indexPath.item]
            return cell
            
        } else {
            cell.selectedCourse = programmingCourses[indexPath.item]
            return cell
            
        }
//        switch topic {
//        case "Reusable Energy":
//            cell.selectedCourse = programmingCourses[indexPath.item]
//            return cell
//            break
//        case "Programming":
//            cell.selectedCourse = programmingCourses[indexPath.item]
//            return cell
//            break
//        case "Artificial Int.":
//            cell.selectedCourse = programmingCourses[indexPath.item]
//            return cell
//            break
//        default:
//            cell.selectedCourse = programmingCourses[indexPath.item]
//            return cell
//            break
//        return cell
//    }
}
}
