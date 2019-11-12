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
    var education: [Education] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
          return 2
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        work = createArray()
        education = createArrayEducation()
        
}

        func createArray()->[Work] {
            var tempJobs: [Work] = []
            
            let firstJob = Work(workImage: UIImage(named: "Audi-Logo")!, title: "CEO of Audi", date: "2014-2016",text: "Hello this is about my first job")
            let secondJob = Work(workImage: UIImage(named: "Merc-Logo")!, title: "CEO of Mercedez", date: "2016-2018", text: "Hello this is about my 2nd job")
            let thirdJob = Work(workImage: UIImage(named: "Apple")!, title: "CEO of Apple", date: "2018-2020", text: "Hello this is about my 3rd job")
            
            tempJobs.append(firstJob)
            tempJobs.append(secondJob)
            tempJobs.append(thirdJob)
            
            return tempJobs
        }
    
        func createArrayEducation()->[Education]{
            var education: [Education] = []
        
            let firstEducation = Education(educationImage: UIImage(named: "Book-Logo")!, title: "Education", date: "2020", text:"My first Education" )
        
            education.append(firstEducation)
        
            return education
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MasterToDetail"{
            let destSecondEVC = segue.destination as! SecondExperienceViewController
            destSecondEVC.work = sender as? Work
        }
    }
    
}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let sectionName: String
        
        switch section{
        
        case 0:
            sectionName = NSLocalizedString("Work", comment: "Work")
        case 1:
            sectionName = NSLocalizedString("Education", comment: "Education")
        default:
            sectionName = "Other sections"
        }
        return sectionName
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return work.count
        }
        else{
            return education.count
        }
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cells = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
        
        if indexPath.section == 0{
        let Works = work[indexPath.row]
            cells.setJobs(work: Works)
        }
        else{
            let Educations = education[indexPath.row]
            cells.firstEducation(education: Educations)
        }
        return cells
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let Work = work[indexPath.row]
        performSegue(withIdentifier: "MasterToDetail", sender: Work)
    }
  
}
