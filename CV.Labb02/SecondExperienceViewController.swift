//
//  SecondExperienceViewController.swift
//  CV.Labb02
//
//  Created by Du Won Htoo on 2019-11-12.
//  Copyright © 2019 Du Won Htoo. All rights reserved.
//

import UIKit

class SecondExperienceViewController: UIViewController {

    
    @IBOutlet weak var ExperienceImageView2: UIImageView!
    @IBOutlet weak var ExperienceTitleView2: UILabel!
    @IBOutlet weak var ExperienceDateView2: UILabel!
    @IBOutlet weak var ExperienceTextView2: UILabel!
    
    var work: Work?
    var education: Education?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if work != nil {
            setUIWork()
        }
        else {
            setUIEducation()
        }
    }
    
    func setUIWork(){
        
        ExperienceImageView2.image = work?.workImage
        ExperienceTitleView2.text = work?.title
        ExperienceDateView2.text = work?.date
        ExperienceTextView2.text = work?.text
    }
 
    func setUIEducation(){
        
        ExperienceImageView2.image = education?.educationImage
        ExperienceTitleView2.text = education?.title
        ExperienceDateView2.text = education?.date
        ExperienceTextView2.text = education?.text
    }
}
