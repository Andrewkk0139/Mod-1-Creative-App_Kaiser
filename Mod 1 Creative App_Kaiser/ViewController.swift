//
//  ViewController.swift
//  Mod 1 Creative App_Kaiser
//
//  Created by ANDREW KAISER on 8/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unemploymentFieldOutlet: UILabel!
    @IBOutlet weak var employmentFieldOutlet: UITextField!
    @IBOutlet weak var employmentRateOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateAction(_ sender: Any) {
        var unemployment = Int(unemploymentFieldOutlet.text!)
        var employment = Int(employmentFieldOutlet.text!)
        if let a = unemployment {
            if let a = employment {
             var rate = (Double(unemployment!)/Double(employment!)) * 100
                employmentRateOutlet.text = "The Employment Rate: \(rate)"
            } else {
                employmentRateOutlet.text = "Invalid Data"
            }
        } else{
            employmentRateOutlet.text = "Invalid Data"
        }
        
    }
    
    
    

}

