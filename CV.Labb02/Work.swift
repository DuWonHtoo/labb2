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
    var workImage : UIImage
    var title: String
    var date: Int
    
    init(workImage: UIImage, title: String, date: Int){
        self.workImage = workImage
        self.title = title
        self.date = date
    }

}
