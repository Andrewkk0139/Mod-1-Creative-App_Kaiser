//
//  ViewController.swift
//  Mod 1 Creative App_Kaiser
//
//  Created by ANDREW KAISER on 8/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unemploymentFieldOutlet: UITextField!
    @IBOutlet weak var employmentFieldOutlet: UITextField!
    @IBOutlet weak var employmentRateOutlet: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hi")
    }
    @IBAction func calculateAction(_ sender: Any) {
        unemploymentFieldOutlet.resignFirstResponder()
        employmentFieldOutlet.resignFirstResponder()
        var rate: Double?
        let unemployment = Int(unemploymentFieldOutlet.text!)
        let employment = Int(employmentFieldOutlet.text!)
        if let a = unemployment {
            if let b = employment {
                //Round is my creative feature
                rate = round(((Double(a)/Double(b)) * 100) * 100) / 100
                employmentRateOutlet.text = "The Employment Rate: \(rate!)%"
            } else {
                employmentRateOutlet.text = "Invalid Data"
                imageViewOutlet.image = UIImage(named: "error")
                return
            }
        } else{
            employmentRateOutlet.text = "Invalid Data"
            imageViewOutlet.image = UIImage(named: "error")
            return
        }
        if((rate!) >= 50){
            imageViewOutlet.image = UIImage(named: "downGraph")
        } else {
            imageViewOutlet.image = UIImage(named: "upGraph")
        }
    }
    
    
    

}
