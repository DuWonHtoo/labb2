//
//  Image.swift
//  CV.Labb02
//
//  Created by Du Won Htoo on 2019-11-06.
//  Copyright © 2019 Du Won Htoo. All rights reserved.
//

import Foundation
import UIKit

class Work {
    var workImage: UIImage
    var title: String
    var date: String
    var text: String
    
    init(workImage: UIImage, title: String, date: String, text: String){
        self.workImage = workImage
        self.title = title
        self.date = date
        self.text = text
    }
}

class Education {
    var educationImage: UIImage
    var title: String
    var date: String
    var text: String
    
        
    init(educationImage: UIImage, title: String, date: String, text: String){
        self.educationImage = educationImage
        self.title = title
        self.date = date
        self.text = text
    }
}


