//
//  ExperienceViewController.swift
//  CV.Labb02
//
//  Created by Du Won Htoo on 2019-11-08.
//  Copyright © 2019 Du Won Htoo. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    var work: [Work] = []
    var myIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        work = createArray()
        
}

        func createArray()->[Work] {
            var tempJobs: [Work] = []
            
            let firstJob = Work(workImage: UIImage(named: "Audi-Logo")!, title: "CEO of Audi", date: "2014-2016")
            let secondJob = Work(workImage: UIImage(named: "Merc-Logo")!, title: "CEO of Mercedez", date: "2016-2018")
            let thirdJob = Work(workImage: UIImage(named: "Apple")!, title: "CEO of Apple", date: "2018-2020")
            
            tempJobs.append(firstJob)
            tempJobs.append(secondJob)
            tempJobs.append(thirdJob)
            
            return tempJobs
        }

}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return work.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Works = work[indexPath.row]
        let cells = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
        
        cells.setJobs(work: Works)
        
        return cells
    }
    
   // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
     //   myIndex = indexPath.row
        
    
}
