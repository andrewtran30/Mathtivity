//
//  HomeViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 10/28/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit
import Firebase
class HomeViewController: UIViewController {
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    @IBOutlet weak var collectionView: UICollectionView!
    var courses = Course.fetchCourses()
    let cellScaling: CGFloat = 0.6
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicator.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
        UserDefaults.standard.set(true, forKey: "user_uid_key")
        UserDefaults.standard.synchronize()
        //THINGS YOU NEED
        //1) WHAT YOUR CELL LOOKS LIKE
        //2) HOW MANY CELLS YOU WILL HAVE
        //3) HOW BIG YOUR CELL IS - SIZE
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScaling)
        let cellHeight = floor(screenSize.height * cellScaling)
        
        let insetX = (view.bounds.width - cellWidth) / 2.0
        let insetY = (view.bounds.height - cellHeight) / 2.0
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView?.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
 

    
    @IBAction func meetOwnerButton(_ sender: Any) {
        performSegue(withIdentifier: "meetOwnerSegue", sender: nil)
    }

   
    
    @IBAction func logoutBtn(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            
            if Auth.auth().currentUser == nil {
                UserDefaults.standard.set(false, forKey: "user_uid_key")
                UserDefaults.standard.synchronize()
                print("THE VALUE IS NOW", UserDefaults.standard.value(forKey: "user_key_uid")!)
                
                dismiss(animated: true, completion: nil)
                
            }
        } catch let error as Error{
            print("LOGOUT ERROR HERE", error)
        }
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return courses.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! FeaturedCourseViewCell
        cell.course = courses[indexPath.item]
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var selected = courses[indexPath.item]
        performSegue(withIdentifier: "topicSegue", sender: selected.title)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "topicSegue" {
            var nextVC = segue.destination as! TopicViewController
            if sender as! String == "Discover how mathematics can redesign the future" {
                nextVC.topic = "Mathematics"
                nextVC.quote = "Pure mathematics is, in its way, the poetry of logical ideas. - Albert Einstein"
                nextVC.image = UIImage(named: "math")!
                nextVC.gradient = UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)
                
            } else if sender as! String == "Create amazing software and applications through code"{
                nextVC.topic = "Programming"
                nextVC.quote = "I want to make a ding in the universe. - Steve Jobs"
                nextVC.image = UIImage(named: "cyber glasses")!
                nextVC.gradient = UIColor(red: 63/255.0, green: 60/255.0, blue: 100/255.0, alpha: 0.8)
                
            } else if sender as! String == "Coming Soon!" {
                nextVC.topic = "Coming Soon!"
                nextVC.quote = "Videos coming soon! Enjoy the videos we currently have on this app and change the world! If you have any further questions, contact Mathtivity Support."
                nextVC.image = UIImage(named: "reusable energy")!
                nextVC.gradient = UIColor(red: 90/255.0, green: 60/255.0, blue: 80/255.0, alpha: 0.8)
                
            } else {
                nextVC.topic = "Artificial Int."
                nextVC.quote = "You’ll be at a superhuman level almost as soon as that algorithm is implanted in silicon. - Bill Gates"
                nextVC.image = UIImage(named: "artificial intelligence")!
                nextVC.gradient = UIColor(red: 73/255.0, green: 120/255.0, blue: 60/255.0, alpha: 0.8)
                
            }
        }
        
    }
}
extension HomeViewController: UIScrollViewDelegate, UICollectionViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing //this is our index
        var offset = targetContentOffset.pointee //this is an object that allows us to change our target content offset
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing //left because we are scrolling horizontally
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
}
