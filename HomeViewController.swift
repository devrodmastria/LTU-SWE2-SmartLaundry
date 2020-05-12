//
//  ViewController.swift
//  SmartLaundry
//
//  Created by Rod Mesquita on 4/25/20.
//  Copyright © 2020 LTU-SWE2. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var schoolNameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "HomeToSearch"){
            let targetViewController = segue.destination as! SearchViewController
            targetViewController.schoolName = schoolNameInput.text ?? "LTU"
        }
    }

}

