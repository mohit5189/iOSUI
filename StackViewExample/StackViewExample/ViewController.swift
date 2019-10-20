//
//  ViewController.swift
//  StackViewExample
//
//  Created by Mohit Kumar on 20/10/2019.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hideEmail(_ sender: Any) {
        let button = sender as! UIButton
        if button.tag == 0 {
            button.tag = 1
            emailStackView.isHidden = true
            button.setTitle("Show Email", for: .normal)
        } else {
            button.tag = 0
            emailStackView.isHidden = false
            button.setTitle("Hide Email", for: .normal)
        }
    }
    
}

