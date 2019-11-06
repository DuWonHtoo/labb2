//
//  ViewController.swift
//  CV.Labb02
//
//  Created by Du Won Htoo on 2019-11-06.
//  Copyright © 2019 Du Won Htoo. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var work: [Work] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    func createArray()->[Work] {
        var tempNumberofWork: [Work] = []
        
        let firstJob = Work(workImage: UIImage(named: "Audi")!, title: "Designer at Audi", date: 2014-2016)
        let secondJob = Work(workImage: UIImage(named: "Snapchat")!, title: "CEO of Snapchat", date: 2016-2018)
        let thirdJob = Work(workImage: UIImage(named: "iOS")!, title: "Support", date: 2018-2020)
        
    }

}

