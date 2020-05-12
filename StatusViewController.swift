//
//  StatusViewController.swift
//  SmartLaundry
//
//  Created by Rod Mesquita on 5/11/20.
//  Copyright © 2020 LTU-SWE2. All rights reserved.
//

import UIKit
import MessageUI

class StatusViewController: UIViewController {


    @IBOutlet weak var dormNameStatusLabel: UILabel!
    
    @IBAction func claimWasherButton(_ sender: UIButton) {
        showAlert(withTitle: "Got it!", message: "We'll notify you when your clothes are ready to dry.")

    }
    @IBAction func subscribeButton(_ sender: UIButton) {
        showAlert(withTitle: "Got it!", message: "App Notifications Enabled")
    }
    
    
    var dormName: String!
    var floorNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dormNameStatusLabel.text = dormName + " floor " + floorNumber + " status"
        
    }
    
    func showAlert(withTitle title: String, message: String) {
        DispatchQueue.main.async {
        let alert = UIAlertController(title: title,
                                      message: message, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .destructive, handler: nil)
        alert.addAction(dismissAction)
        self.present(alert, animated: true, completion: nil)
        }
    }

}
