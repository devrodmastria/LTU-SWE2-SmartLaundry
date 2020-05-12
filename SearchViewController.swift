//
//  SearchViewController.swift
//  SmartLaundry
//
//  Created by Rod Mesquita on 5/11/20.
//  Copyright © 2020 LTU-SWE2. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var dormNameInput: UITextField!
    @IBOutlet weak var floorInput: UITextField!
    
    @IBOutlet weak var schoolNameLabel: UILabel!
    var schoolName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        schoolNameLabel.text = "Location:\n" + schoolName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "SearchToStatus"){
            let statusView = segue.destination as! StatusViewController
            statusView.dormName = dormNameInput.text
            statusView.floorNumber = floorInput.text
        }
    }

}

