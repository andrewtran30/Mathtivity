//
//  TopicViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/10/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController {

    @IBOutlet weak var courseNavigationTitle: UINavigationItem!
    @IBOutlet weak var courseQuote: UILabel!
    @IBOutlet weak var courseBackgroundGradient: UIView!
    @IBOutlet weak var courseImageView: UIImageView!
    @IBOutlet weak var coursesCollectionView: UICollectionView!
    @IBOutlet weak var selectedTitle: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    let cellScaling: CGFloat = 0.33
    var topic = ""
    var quote = ""
    var image: UIImage = UIImage()
    var gradient: UIColor = UIColor()
    var programmingCourses = Selected.fetchProgrammingCourses()
    var AIcourses = Selected.fetchAIcourses()
    var mathCourses = Selected.fetchMathCourses()
    var reusableEnergyCourses = Selected.fetchReusableEnergy()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseNavigationTitle.title = topic
        selectedTitle.text = topic
        courseQuote.text = quote
        courseImageView.image = image
        courseBackgroundGradient.backgroundColor = gradient
        
        
        //THINGS YOU NEED
        //1) WHAT YOUR CELL LOOKS LIKE
        //2) HOW MANY CELLS YOU WILL HAVE
        //3) HOW BIG YOUR CELL IS - SIZE
        let screenSize = UIScreen.main.bounds.size
    
        let cellWidth = floor(screenSize.width * cellScaling)
        let cellHeight = floor(screenSize.height * cellScaling)
        
        let insetX = (view.bounds.width - cellWidth) / 4.0
        let insetY = (view.bounds.height - cellHeight) / 2.0
        
        let layout = coursesCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth * 1.12, height: cellHeight / 1.25)
        coursesCollectionView?.contentInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        coursesCollectionView?.dataSource = self
        coursesCollectionView?.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func backFromCourse(_segue: UIStoryboardSegue) {
        
    }
    @IBAction func Freepik(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.freepik.com")!, options: [:], completionHandler: nil)
    }
    @IBAction func Flaticon(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.flaticon.com")!, options: [:], completionHandler: nil)
    }
}
extension TopicViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if topic == "Mathematics" {
            return mathCourses.count
        } else if topic == "Programming" {
            return programmingCourses.count
        } else if topic == "Coming Soon!" {
            return reusableEnergyCourses.count
        } else {
            return AIcourses.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if topic == "Mathematics" {
            let cell = mathCourses[indexPath.item]
            performSegue(withIdentifier: "courseSegue", sender: cell.selectedTitle)
        } else if topic == "Programming" {
            let cell = programmingCourses[indexPath.item]
            performSegue(withIdentifier: "courseSegue", sender: cell.selectedTitle)
        } else if topic == "Coming Soon!" {
            let cell = reusableEnergyCourses[indexPath.item]
            performSegue(withIdentifier: "courseSegue", sender: cell.selectedTitle)
        } else {
            let cell = AIcourses[indexPath.item]
            performSegue(withIdentifier: "courseSegue", sender: cell.selectedTitle)
        }
//        let cell = indexPath.item
//        performSegue(withIdentifier: "courseSegue", sender: cell.)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "courseSegue" {
            if sender as! String == "Learn to code in Python" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchPythonVideos()
                nextVC.practiceItemsInVideos = Practice.fetchPythonPractice()
            } else if sender as! String == "Programming in C++" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchCVideos()
                nextVC.practiceItemsInVideos = Practice.fetchCPractice()
            } else if sender as! String == "iOS app developing for Beginners" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchSwiftBVideos()
                nextVC.practiceItemsInVideos = Practice.fetchSwiftBPractice()
            } else if sender as! String == "Create a Website with HTML & CSS" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchHTMLVideos()
                nextVC.practiceItemsInVideos = Practice.fetchHTMLPractice()
            } else if sender as! String == "Make a Video Game with Unity" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchGameVideos()
                nextVC.practiceItemsInVideos = Practice.fetchGamePractice()
            } else if sender as! String == "Make Your Own Android App" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchAndroidVideos()
                nextVC.practiceItemsInVideos = Practice.fetchAndroidPractice()
            } else if sender as! String == "Learn More About Deep Learning" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchDLVideos()
                nextVC.practiceItemsInVideos = Practice.fetchDLPractice()
            } else if sender as! String == "Machine Learning is Awesome!" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchMLVideos()
                nextVC.practiceItemsInVideos = Practice.fetchMLPractice()
            }
//            else if sender as! String == "UMichican's NLP Course" {
//                let nextVC = segue.destination as! VideosViewController
//                nextVC.titleOfCourse = sender as! String
//                nextVC.videos = Video.fetchNLPVideos()
//                nextVC.practiceItemsInVideos = Practice.fetchNLPPractice()
//            }
            else if sender as! String == "AOPS AMC 12 Final Fives" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchAMC12Videos()
                nextVC.practiceItemsInVideos = Practice.fetchAMC12Practice()
            } else if sender as! String == "Ace the AMC 10 Test" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchAMC10Videos()
                nextVC.practiceItemsInVideos = Practice.fetchAMC10Practice()
            } else if sender as! String == "Strategies to Solve ANY Problem" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchMathStrategiesVideos()
                nextVC.practiceItemsInVideos = Practice.fetchMathStrategiesPractice()
            } else if sender as! String == "An Amazing SAT Math Course" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchSATVideos()
                nextVC.practiceItemsInVideos = Practice.fetchSATPractice()
            } else if sender as! String == "Really Weird Videos..." {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchWeirdVideos()
                nextVC.practiceItemsInVideos = Practice.fetchWeirdPractice()
            } else if sender as! String == "History of Mathematics" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchHistoryVideos()
                nextVC.practiceItemsInVideos = Practice.fetchHistoryPractice()
            } else if sender as! String == "Discover Reusable Rockets" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchRRVideos()
                nextVC.practiceItemsInVideos = Practice.fetchRRPractice()
            } else if sender as! String == "Imaginary Numbers are Real" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchImaginaryVideos()
                nextVC.practiceItemsInVideos = Practice.fetchImaginaryPractice()
            } else if sender as! String == "Mathematical Proofs" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchProofVideos()
                nextVC.practiceItemsInVideos = Practice.fetchProofPractice()
            } else if sender as! String == "Algorithm Applications" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchCryptographyVideos()
                nextVC.practiceItemsInVideos = Practice.fetchCryptographyPractice()
            } else if sender as! String == "Java Programming" {
                let nextVC = segue.destination as! VideosViewController
                nextVC.titleOfCourse = sender as! String
                nextVC.videos = Video.fetchJavaVideos()
                nextVC.practiceItemsInVideos = Practice.fetchJavaPractice()
            }
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "selectedCourseCell", for: indexPath) as! TopicCollectionViewCell
        if topic == "Reusable Energy" {
            cell.selectedCourse = reusableEnergyCourses[indexPath.item]
            return cell
        } else if topic == "Programming" {
            cell.selectedCourse = programmingCourses[indexPath.item]
            return cell
        } else if topic == "Artificial Int." {
            cell.selectedCourse = AIcourses[indexPath.item]
            return cell
        } else {
            cell.selectedCourse = mathCourses[indexPath.item]
            return cell
        }
    }
    
}
