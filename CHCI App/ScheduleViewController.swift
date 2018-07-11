//
//  ScheduleViewController.swift
//  CHCI App
//
//  Created by CS Student on 2017-12-23.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {

    @IBOutlet weak var day1or2Label: UILabel!
    @IBOutlet weak var Period5: UIImageView!
    @IBOutlet weak var Period4: UIImageView!
    @IBOutlet weak var Period5Class: UILabel!
    @IBOutlet weak var Period4Class: UILabel!
    @IBOutlet weak var Period5Teacher: UILabel!
    @IBOutlet weak var Period4Teacher: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if currentDay%2==0{
            self.day1or2Label.text = "DAY 2 (EVEN DAY)"
            self.Period4Class.text = "Advanced Functions"
            self.Period5Class.text = "Spare"
            self.Period4Teacher.text = "Reparon B118"
            self.Period5Teacher.text = "-"
            Period4.image = UIImage(named: "EBlock Background")
            Period5.image = UIImage(named: "DBlock Background")
        } else {
            self.day1or2Label.text = "DAY 1 (ODD DAY)"
            self.Period5Class.text = "Advanced Functions"
            self.Period4Class.text = "Spare"
            self.Period5Teacher.text = "Reparon B118"
            self.Period4Teacher.text = "-"
            Period5.image = UIImage(named: "EBlock Background")
            Period4.image = UIImage(named: "DBlock Background")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //turns into landscape student card when landscape mode
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            self.dismiss(animated: true,completion: nil)
            let next = self.storyboard?.instantiateViewController(withIdentifier: "landscapeOnly") as! LandscapeStudentCardViewController
            self.present(next,animated: true,completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
