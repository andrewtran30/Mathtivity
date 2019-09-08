//
//  Course.swift
//  Mathtivity
//
//  Created by Andrew Tran on 10/29/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import Foundation
import UIKit
class Course {
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor) {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    static func fetchCourses() -> [Course] {
        return [
            Course(title: "Discover how mathematics can redesign the future", featuredImage: UIImage(named: "math")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Course(title: "Create amazing software and applications through code", featuredImage: UIImage(named: "cyber glasses")!, color: UIColor(red: 63/255.0, green: 60/255.0, blue: 100/255.0, alpha: 0.8)),
            
            Course(title: "Dive deep into machine learning and artificial intelligence", featuredImage: UIImage(named: "artificial intelligence")!, color: UIColor(red: 73/255.0, green: 120/255.0, blue: 60/255.0, alpha: 0.8))
//            Course(title: "Coming Soon!", featuredImage: UIImage(named: "reusable energy")!, color: UIColor(red: 90/255.0, green: 60/255.0, blue: 80/255.0, alpha: 0.8))
            
        ]
    }
}
