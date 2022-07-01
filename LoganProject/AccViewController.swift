//
//  AccViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class AccViewController: UIViewController {

    @IBOutlet weak var accImageView: UIImageView!
    var robot = [String: String]()
    var robotAcc :[String] = []
    var idx: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        robotAcc = ["acc_1","acc_2","acc_3", "acc_4", "acc_5"]
        idx = 0

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goRight6(_ sender: Any) {
        if(idx == robotAcc.count-1){
            idx = 0
        }else{
            idx = idx+1
        }
        accImageView.image = UIImage(named:robotAcc[idx])
    }
    
    @IBAction func goLeft6(_ sender: Any) {
       if(idx==0){
        idx = robotAcc.count-1
        }else{
            idx = idx-1
    }
        accImageView.image = UIImage(named:robotAcc[idx])
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
        if let results = segue.destination as? ResultsViewController {
            robot["acc"] = robotAcc[idx]
            results.robot = self.robot
        }

    }

}
