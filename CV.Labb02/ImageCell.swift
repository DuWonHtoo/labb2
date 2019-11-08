//
//  ImageCell.swift
//  CV.Labb02
//
//  Created by Du Won Htoo on 2019-11-06.
//  Copyright © 2019 Du Won Htoo. All rights reserved.
//

import UIKit


class ImageCell: UITableViewCell {


    @IBOutlet weak var experienceImageView: UIImageView!
    @IBOutlet weak var workTitleLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    
    func setJobs(work: Work){
    
    experienceImageView.image = work.workImage
    workTitleLable.text = work.title
    dateLable.text = work.date
        
    }
}
