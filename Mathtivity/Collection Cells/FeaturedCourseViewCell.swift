//
//  FeaturedCourseViewCell.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/2/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class FeaturedCourseViewCell: UICollectionViewCell {
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var featuredTitleLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var course: Course? {
    didSet {
            self.updateUI()
        }
    }
    private func updateUI() {
        if let course = course {
            featuredImageView.image = course.featuredImage
            featuredTitleLabel.text = course.title
            backgroundColorView.backgroundColor = course.color
        } else {
            featuredImageView.image = nil
            featuredTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
    }
}
