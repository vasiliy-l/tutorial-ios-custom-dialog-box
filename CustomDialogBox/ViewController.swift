//
//  ViewController.swift
//  CustomDialogBox
//
//  Created by  William on 5/1/19.
//  Copyright © 2019 Vasiliy Lada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAllertButtonPressed(_ sender: UIButton) {
        let alert = CustomAlertView(title: "Hello there!! 👋👋",
                                    image: UIImage(named: "hello_image")!)
        alert.show(animated: true)
    }
    
    @IBAction func showAlertFromXibButtonPressed(_ sender: UIButton) {
        let alert2 = CustomAlertView2(title: "Howdy! 👀",
                                    image: UIImage(named: "hello_image2")!)
        alert2.show(animated: true)
    }
    
}

