//
//  HeadViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class HeadViewController: UIViewController {
    
    @IBOutlet weak var headImageView: UIImageView!
    
    var robot = [String: String]()
    var robotHeads: [String] = []
    var idx: Int = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        robotHeads = ["head_1","head_2","head_3"] // these should be the names of your images!
        idx = 0 // starting index of array

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goLeft(_ sender: Any) {
        if (idx==0) {
            idx = robotHeads.count-1
        }
        else {
            idx = idx-1
        }
        headImageView.image = UIImage(named:robotHeads[idx])
    }
    
    @IBAction func goRight(_ sender: Any) {
        if (idx==robotHeads.count-1) {
            idx = 0
        }
        else {
            idx = idx+1
        }
        headImageView.image = UIImage(named:robotHeads[idx])
    }
    //Connected the next button from the headviewcontroller to the resultsViewController
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let results = segue.destination as? FaceViewController {
            robot["head"] = robotHeads[idx]
            results.robot = self.robot
        }
        

    }

}
