//
//  SkillsViewController.swift
//  CV.Labb02
//
//  Created by Du Won Htoo on 2019-11-13.
//  Copyright © 2019 Du Won Htoo. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

 
    @IBOutlet weak var purpleBlock: UIView!
    
    @IBAction func ExitButton() {
        dismiss(animated: true, completion: nil)
    }
    
    func movementDrop(view: UIView){
        view.center.y += 300
    }
    
    func movementTop(view: UIView){
        view.center.y -= 600
    }
    
    @IBAction func DropButton() {
        let duration: Double = 2.0
        UIView.animate(withDuration: duration){
        self.movementDrop(view: self.purpleBlock)
        }
        
        UIView.animate(withDuration: duration, animations:{
            self.movementDrop(view: self.purpleBlock)
        }) { (finished) in
            if finished{
                UIView.animate(withDuration: duration, animations:{
                self.movementTop(view: self.purpleBlock)
                })
            }
        }
    }
    
}
    

    



