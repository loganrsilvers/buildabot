//
//  LegViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class LegViewController: UIViewController {

    @IBOutlet weak var robotLegImage: UIImageView!
    var robot = [String: String]()
    var robotLegs : [String] = []
    var idx: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        robotLegs = ["leg_1", "leg_2", "leg_3"]

        
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goRight5(_ sender: Any) {
        if ( idx == robotLegs.count-1){
            idx = 0
        }else{
            idx = idx+1
        }
        robotLegImage.image = UIImage(named: robotLegs[idx])
    }
    
    
    @IBAction func goLeft5(_ sender: Any) {
     if ( idx == 0){
         idx = robotLegs.count-1
    }else{
        idx = idx-1
    }
    robotLegImage.image =
    UIImage(named: robotLegs[idx])
    
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
        if let results = segue.destination as? AccViewController {
            robot["leg"] = robotLegs[idx]
            results.robot = self.robot
        }

}

}
