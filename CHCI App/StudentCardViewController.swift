//
//  StudentCardViewController.swift
//  CHCI App
//
//  Created by CS Student on 2017-12-23.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class StudentCardViewController: UIViewController {

    @IBOutlet weak var studentCardImage: UIImageView!
    @IBOutlet weak var cardCheck: UIImageView!
    @IBOutlet weak var fitnessCheck: UIImageView!
    @IBOutlet weak var bookCheck: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //makes image view (that contains the student picture) a circle
        studentCardImage.layer.cornerRadius = studentCardImage.frame.height/2
        studentCardImage.clipsToBounds = true
        
        if cardYes==true {
            cardCheck.image = UIImage(named: "Yes Option Graphic")
        } else {
            cardCheck.image = UIImage(named: "No Option Graphic")
        }
        if fitnessYes==true {
            fitnessCheck.image = UIImage(named: "Yes Option Graphic")
        } else {
            fitnessCheck.image = UIImage(named: "No Option Graphic")
        }
        if bookYes==true {
            bookCheck.image = UIImage(named: "Yes Option Graphic")
        } else {
            bookCheck.image = UIImage(named: "No Option Graphic")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    //buttons connect to website
    @IBAction func chciURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://chc.wrdsb.ca/")! as URL, options: [:], completionHandler: nil)
    }

    @IBAction func myWayURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://myway.wrdsb.ca/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func myPasswordURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://mypassword.wrdsb.ca/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func guidanceURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://chc.wrdsb.ca/guidance/")! as URL, options: [:], completionHandler: nil)
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
