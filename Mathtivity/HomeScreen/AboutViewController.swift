//
//  AboutViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 1/30/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit
import SnapKit
class AboutViewController: UIViewController, UIScrollViewDelegate {

    private let scrollView = UIScrollView()
    private let infoText = UILabel()
    private let imageView = UIImageView()
    private let textContainer = UIView()
    private let titleContainer = UIView()
    private let titleText = UILabel()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.delegate = self
        
        imageView.image = UIImage(named: "Augmented SFTS")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        infoText.textColor = .white
        infoText.numberOfLines = 0
        
        titleText.textColor = .white
        titleText.numberOfLines = 0
        titleText.font = .boldSystemFont(ofSize: 22)
        
        let title = "Mathtivity by Andrew H. Tran"
        let text =  """
                    Hey guys, I'm Andrew Tran, the creator of Mathtivity and Board of Director member of a nonprofit organization called STEM for the Streets.

                    A few years ago when I was around 6 or 7, I was a horrible math student. What made it even worse was that my cousins, friends, and aquantinces were excelling in the one subject I learned to hate. They were getting 100s on their tests and had everything on their plate, while I was struggled to succeed. I hated it. I struggled, I got angry, and I absolutely detested math. I even vowed to never do anything remotely related to math when I grew up because I would never want to subject myself to \"mental torment\" after I finished high school.
                    
                    All of this changed when a particular sixth grade teacher showed me the proof to the Pythagoras Theorem. And for the first time ever, I was captivated. I felt as if I had left the house of ignorance and hate, and had entered into a new world of curiosity. The beauty of such a proof showed me that math didn't have to be such a boring subject after all. I realized that math wasn't simply about memorization of formulas, rather, it was the poetry of logical ideas put together abstractly to create a fascinating result. 
                    
                    And with this app, I wish this to you. With one video, you can be that kid who runs around the room after learning about some abstract proof. You can be that kid who's ecstatic because he had published his first mobile app. You can be that kid who is dying with excitement, waiting to launch her homemade rocket. With Mathtivity, you can be a \"that kid.\" Every. Single. Day. There will be endless learning opportunities for you to explore your latent STEM passion.

                    So there it is. Use this app to unlock your passion in STEM, and change the world.
                    """
        
//        Hey guys, I'm Andrew Tran, the creator of Mathtivity.
//
//        The story behind the creation of this app is one of a kind. I wasn't inspired by Elon Musk, Steve Jobs, Bill Gates, nor any other tech titan(although I do look up to them). I was inspired by the very place I go to every day: school.
//
//        As a sophomore attending an extremely diverse school with many living along the poverty line, I am awarded with the opportunity to hear the stories of many. Some students I've talked to fear waking up in the morning because of constant crimes committed in their neighborhood. Some students face the fear of whether an immigration officer will come into their apartment and bang on their door and forcibly take them back to South America. Some students face the fear of whether they would even have a roof to live under because the paycheck at the end of the month might not cover the rent bill; or because the local supermarket decided to raise the price for certain foods. Despite the frantic nature of the \"some,\", not one word of victimization comes out of their mouth. No, in fact, they are the most determined kids that come out of school.
//
//        But then I realize, there are thousands of other students who share the same set of challenges outside of my surroundings. As a STEM enthusiast, I’m making it my mission to provide resources to these students who may be interested in the deeper, more abstract concepts of math and science. And thus, with Mathtivity, they will be able to learn a variety of advanced topics supplemented with live interactive feedback for free. With that said, I hope you can utilize these resources and make your mark on the world.
        infoText.text = text
        titleText.text = title
        
        let imageContainer = UIView()
        imageContainer.backgroundColor = .darkGray
        
        textContainer.backgroundColor = .clear
        titleContainer.backgroundColor = .clear
        
        let textBacking = UIView()
        textBacking.backgroundColor = UIColor(red: 60/255.0, green: 168/255.0, blue: 234/255.0, alpha: 1.0)
        
        let titleBacking = UIView()
        titleBacking.backgroundColor = UIColor(red: 60/255.0, green: 168/255.0, blue: 234/255.0, alpha: 1.0)
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(imageContainer)
        scrollView.addSubview(textBacking)
        scrollView.addSubview(titleBacking)
        scrollView.addSubview(titleContainer)
        scrollView.addSubview(textContainer)
        scrollView.addSubview(imageView)
        
        titleContainer.addSubview(titleText)
        textContainer.addSubview(infoText)
        
        scrollView.snp.makeConstraints {
            make in
            
            make.edges.equalTo(view)
        }
        
        imageContainer.snp.makeConstraints {
            make in
            
            make.top.equalTo(scrollView)
            make.left.right.equalTo(view)
            make.height.equalTo(imageContainer.snp.width).multipliedBy(0.9)
        }
        
        imageView.snp.makeConstraints {
            make in
            
            make.left.right.equalTo(imageContainer)
            
            //** Note the priorities
            make.top.equalTo(view).priority(.high)
            
            //** We add a height constraint too
            make.height.greaterThanOrEqualTo(imageContainer.snp.height).priority(.required)
            
            //** And keep the bottom constraint
            make.bottom.equalTo(imageContainer.snp.bottom)
        }
        
        textContainer.snp.makeConstraints {
            make in
            
            make.top.equalTo(titleContainer.snp.bottom)
            make.left.right.equalTo(view)
            make.bottom.equalTo(scrollView)
        }
        
        textBacking.snp.makeConstraints {
            make in
            
            make.left.right.equalTo(view)
            make.top.equalTo(textContainer)
            make.bottom.equalTo(view)
        }
        
        infoText.snp.makeConstraints {
            make in
            
            make.edges.equalTo(textContainer).inset(14)
        }
        
        titleContainer.snp.makeConstraints {
            make in
            
            make.top.equalTo(imageContainer.snp.bottom)
            make.left.right.equalTo(view)
            make.bottom.equalTo(textContainer.snp.top)
        }
        
        titleBacking.snp.makeConstraints {
            make in
            
            make.left.right.equalTo(view)
            make.top.equalTo(titleContainer)
            make.bottom.equalTo(titleContainer)
        }
        
        titleText.snp.makeConstraints {
            make in
            make.centerX.equalTo(titleContainer.snp.centerX)
            make.edges.equalTo(titleContainer).inset(14)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.scrollIndicatorInsets = view.safeAreaInsets
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: view.safeAreaInsets.bottom, right: 0)
    }
    
    //MARK: - Scroll View Delegate
    
    private var previousStatusBarHidden = false
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if previousStatusBarHidden != shouldHideStatusBar {
            
            UIView.animate(withDuration: 0.2, animations: {
                self.setNeedsStatusBarAppearanceUpdate()
            })
            
            previousStatusBarHidden = shouldHideStatusBar
        }
    }
    
    //MARK: - Status Bar Appearance
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        return shouldHideStatusBar
    }
    
    private var shouldHideStatusBar: Bool {
        let frame = textContainer.convert(textContainer.bounds, to: nil)
        return frame.minY < view.safeAreaInsets.top
    }

}
