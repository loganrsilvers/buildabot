//
//  FaceViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class FaceViewController: UIViewController {
        // Do any additional setup after loading the view.
    
    @IBOutlet weak var faceImageView: UIImageView!
    
    var robot = [String: String]()
    var robotFaces: [String] = []
        var idx: Int = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            robotFaces = ["face_1","face_2","face_3"] // these should be the names of your images!
            idx = 0 // starting index of array

            // Do any additional setup after loading the view.
    
        }
    
    
    @IBAction func GoRight2(_ sender: Any) {
        if (idx==0) {
            idx = robotFaces.count-1
        }
        else {
            idx = idx-1
        }
       faceImageView.image = UIImage(named:robotFaces[idx])
    }
    
    @IBAction func GoLeft2(_ sender: Any) {
        if (idx==0) {
            idx = robotFaces.count-1
        }
        else {
            idx = idx-1
    }
    faceImageView.image = UIImage(named:robotFaces[idx])
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controllreer.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let results = segue.destination as? BodyViewController {
            robot["face"] = robotFaces[idx]
            results.robot = self.robot
        }

}
}
