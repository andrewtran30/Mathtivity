//
//  Selected.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/10/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import Foundation
import UIKit
class Selected {
    var selectedTitle = ""
    var selectedImage: UIImage
    var selectedColor: UIColor
    
    init(selectedTitle: String, selectedImage: UIImage, selectedColor: UIColor) {
        self.selectedColor = selectedColor
        self.selectedImage = selectedImage
        self.selectedTitle = selectedTitle
    }
    static func fetchProgrammingCourses() -> [Selected] {
        return [
            Selected(selectedTitle: "Learn to code in Python", selectedImage: UIImage(named: "python")!, selectedColor: UIColor(red: 75/255.0, green: 129/255.0, blue: 145/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Java Programming", selectedImage: UIImage(named: "java")!, selectedColor: UIColor(red: 150/255.0, green: 129/255.0, blue: 110/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Programming in C++", selectedImage: UIImage(named: "programmer")!, selectedColor: UIColor(red: 237/255.0, green: 208/255.0, blue: 64/255.0, alpha: 1.0)),
            Selected(selectedTitle: "iOS app developing for Beginners", selectedImage: UIImage(named: "swift")!, selectedColor: UIColor(red: 237/255.0, green: 121/255.0, blue: 59/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Create a Website with HTML & CSS", selectedImage: UIImage(named: "html")!, selectedColor: UIColor(red: 87/255.0, green: 200/255.0, blue: 242/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Make a Video Game with Unity", selectedImage: UIImage(named: "unity")!, selectedColor: UIColor(red: 84/255.0, green: 56/255.0, blue: 104/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Make Your Own Android App", selectedImage: UIImage(named: "android")!, selectedColor: UIColor(red: 54/255.0, green: 147/255.0, blue: 59/255.0, alpha: 1.0))
        ]
    }
    static func fetchMathCourses() -> [Selected] {
        return [
            Selected(selectedTitle: "AOPS AMC 12 Final Fives", selectedImage: UIImage(named: "five")!, selectedColor: UIColor(red: 55/255.0, green: 114/255.0, blue: 69/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Ace the AMC 10 Test", selectedImage: UIImage(named: "amc10")!, selectedColor: UIColor(red: 29/255.0, green: 144/255.0, blue: 244/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Strategies to Solve ANY Problem", selectedImage: UIImage(named: "mathStrategies")!, selectedColor: UIColor(red: 239/255.0, green: 202/255.0, blue: 151/255.0, alpha: 1.0)),
            Selected(selectedTitle: "An Amazing SAT Math Course", selectedImage: UIImage(named: "SATmath")!, selectedColor: UIColor(red: 22/255.0, green: 180/255.0, blue: 224/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Really Weird Videos...", selectedImage: UIImage(named: "infinite")!, selectedColor: UIColor(red: 155/255.0, green: 143/255.0, blue: 80/255.0, alpha: 1.0)),
            Selected(selectedTitle: "History of Mathematics", selectedImage: UIImage(named: "stanford")!, selectedColor: UIColor(red: 101/255.0, green: 188/255.0, blue: 117/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Imaginary Numbers are Real", selectedImage: UIImage(named: "dimensions")!, selectedColor: UIColor(red: 50/255.0, green: 63/255.0, blue: 242/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Mathematical Proofs", selectedImage: UIImage(named: "proof")!, selectedColor: UIColor(red: 92/255.0, green: 96/255.0, blue: 104/255.0, alpha: 1.0))
        ]
    }
    static func fetchReusableEnergy() -> [Selected] {
        return [
           
        ]
    }
    static func fetchAIcourses() -> [Selected] {
        return [
            Selected(selectedTitle: "Learn More About Deep Learning", selectedImage: UIImage(named: "deep learning")!, selectedColor: UIColor(red: 72/255.0, green: 186/255.0, blue: 176/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Machine Learning is Awesome!", selectedImage: UIImage(named: "machine learning")!, selectedColor: UIColor(red: 176/255.0, green: 196/255.0, blue: 60/255.0, alpha: 1.0)),
//            Selected(selectedTitle: "UMichican's NLP Course", selectedImage: UIImage(named: "translation")!, selectedColor: UIColor(red: 48/255.0, green: 75/255.0, blue: 114/255.0, alpha: 1.0)),
            Selected(selectedTitle: "Algorithm Applications", selectedImage: UIImage(named: "cryptography")!, selectedColor: UIColor(red: 32/255.0, green: 194/255.0, blue: 14/255.0, alpha: 1.0)),
             Selected(selectedTitle: "Discover Reusable Rockets", selectedImage: UIImage(named: "project")!, selectedColor: UIColor(red: 242/255.0, green: 60/255.0, blue: 24/255.0, alpha: 1.0))
        ]
    }
}
