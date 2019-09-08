//
//  PracticeItemViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 12/2/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class PracticeItemViewController: UIViewController {
    var practiceTitle = ""
    var question = ""
    var answer = ""
    @IBOutlet weak var practiceQuestion: UILabel!
    @IBOutlet weak var practiceItemTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        practiceItemTitle.text = practiceTitle
        practiceQuestion.text = question
        // Do any additional setup after loading the view.
    }
    @IBAction func revealAnswer(_ sender: Any) {
        practiceQuestion.text = answer
    }
}
