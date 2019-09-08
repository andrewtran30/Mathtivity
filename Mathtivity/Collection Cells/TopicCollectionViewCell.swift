//
//  TopicCollectionViewCell.swift
//  Mathtivity
//
//  Created by Andrew Tran on 11/10/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class TopicCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var selectedCourseBackground: UIView!
    @IBOutlet weak var selectedCourseImage: UIImageView!
    @IBOutlet weak var selectedCourseTitle: UILabel!
    
    var selectedCourse: Selected? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let selectedCourse = selectedCourse {
            selectedCourseImage.image = selectedCourse.selectedImage
            selectedCourseTitle.text = selectedCourse.selectedTitle
            selectedCourseBackground.backgroundColor = selectedCourse.selectedColor
        } else {
            selectedCourseImage.image = nil
            selectedCourseTitle.text = nil
            selectedCourseBackground.backgroundColor = nil
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentView.layer.cornerRadius = 10.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.clear.cgColor
        layer.shadowRadius = 7.0
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
    }
}
