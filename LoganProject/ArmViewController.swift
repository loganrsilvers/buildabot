//
//  ArmViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class ArmViewController: UIViewController {
    
    
    @IBOutlet weak var armImageView: UIImageView!
    
    var robot = [String: String]()
    var robotArms: [String] = []
    var idx: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        robotArms = ["arm_1", "arm_2", "arm_3"]
        idx=0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goRight4(_ sender: Any) {
        if (idx == robotArms.count-1){
            idx = 0
        }else{
            idx = idx+1
        }
        armImageView.image = UIImage(named: robotArms[idx])
    }
    
    @IBAction func goLeft4(_ sender: Any) {
        if (idx==0){
            idx = robotArms.count-1
        }else{
            idx = idx-1
        }
        armImageView.image = UIImage(named: robotArms[idx])
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
        if let results = segue.destination as? LegViewController {
            robot["arm"] = robotArms[idx]
            results.robot = self.robot
        }

}

}
