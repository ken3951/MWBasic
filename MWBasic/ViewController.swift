//
//  ViewController.swift
//  MWBasic
//
//  Created by mwk_pro on 2019/3/29.
//  Copyright © 2019 mwk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testBtn.mw_eventInterval = 10
    }

    @IBAction func btnActopm(_ sender: UIButton) {
        MWToastView.show(message: "test")
    }
    
}

