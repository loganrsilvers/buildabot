//
//  BodyViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class BodyViewController: UIViewController {
    
    @IBOutlet weak var bodyImageView: UIImageView!
    
    var robot = [String: String]()
    var robotBodies:[String] = []
    var idx: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        robotBodies = ["body_1", "body_2", "body_3"]
        idx = 0
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func GoRight3(_ sender: Any) {
        if (idx==robotBodies.count-1) {
            idx = 0
        }
        else {
            idx = idx+1
        }
       bodyImageView.image = UIImage(named:robotBodies[idx])
    }
    
    
    @IBAction func GoLeft3(_ sender: Any) {
        if (idx==0) {
            idx = robotBodies.count-1
        }
        else {
            idx = idx-1
    }
    bodyImageView.image = UIImage(named:robotBodies[idx])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let results = segue.destination as? ArmViewController {
            robot["body"] = robotBodies[idx]
            results.robot = self.robot
        }

}
}
