//
//  ResultsViewController.swift
//  LoganProject
//
//  Created by Scholar on 6/30/22.
//

import UIKit



class ResultsViewController: UIViewController {

    var robot = [String: String]()
    
    @IBOutlet weak var acc1: UIImageView!
    @IBOutlet weak var head1: UIImageView!
    @IBOutlet weak var body1: UIImageView!
    @IBOutlet weak var arms1: UIImageView!
    @IBOutlet weak var legs1: UIImageView!
    @IBOutlet weak var face: UIImageView!
    
    var arr = ["Good Job!", "Nice Robot!", "Awesome Robot!", "Duper!", "Amazing!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        selectedHead = robotHeads[0]
        head1.image =
        UIImage(named: robot["head"]!)
        acc1.image =
        UIImage(named: robot["acc"]!)
        body1.image =
        UIImage(named: robot["body"]!)
        arms1.image =
        UIImage(named: robot["arm"]!)
        legs1.image =
        UIImage(named: robot["leg"]!)
        face.image =
        UIImage(named: robot["face"]!)
        text.text = arr.randomElement()! 
        
    }
        @IBOutlet weak var text: UITextField!
        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
